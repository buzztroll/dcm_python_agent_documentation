#!/bin/bash

function usage
{
    name=$(basename $0)
    printf "${name} syntax error!\nUsage: ${name} html|ghpages \n" >&2
    exit 1
}

set -e

BUILDDIR="_build"
GHPAGESDIR="_ghpages"

# Check the number of command line arguments.  Must be one
if [[ $# -ne 1 ]] ; then
    usage   
fi

# First parameter is the build type  Must be html or ghpages
build_type=$(echo $1 | tr '[:upper:]' '[:lower:]')

if [[ $build_type != 'ghpages' && $build_type != "html" ]]; then
    usage
fi    

# Erase the contents of the build html directory
rm -Rf ${BUILDDIR}/* || true

# Run the sphinx build and pass it the version and major version
sphinx-build -q -b html -d ${BUILDDIR}/doctrees . ${BUILDDIR}/html

# Copy the generated version selection box javascript file to the build html directory
cp -p admin_guide_versions.js ${BUILDDIR}/html

echo "Build of the Dell Cloud Manager Python Agent documentation is finished. The HTML pages are in ${BUILDDIR}/html."

# Exit the build if not building the GitHub pages
if [[ "$build_type" != "ghpages" ]]; then
   exit 0;
fi

# Remove the GitHub pages directory
[ ! -z ${GHPAGESDIR} ] && [ -d ${GHPAGESDIR} ] &&  rm -Rf ${GHPAGESDIR}

# Clone the admin guide repo inside the GitHub pages directory
git clone git@github.com:gforghetti/dcm_python_agent_documentation.git ${GHPAGESDIR}
if [ $? -ne 0 ]
then
  printf "git clone git@github.com:gforghetti/dcm_python_agent_documentation.git failed!\n" >&2
  exit 1
fi

cd ${GHPAGESDIR}

# Checkout the gh-page branch which will hold the html for the GitHub pages
git checkout gh-pages
if [ $? -ne 0 ]
then
  printf "git checkout gh-pages failed!\n" >&2
  exit 1
fi

# Cleanup the HTML related files in the GitHub pages directory
rm -Rf *.html || true
rm -Rf *.js   || true
rm -Rf _*     || true 
rm -Rf *.inv  || true 

# Copy the html from the Build directory to the GitHub pages directory
cp -Rp ../${BUILDDIR}/html/* ./

cd ../

echo "Build of the Dell Cloud Manager Python Agent documentation GitHub pages is finished. The HTML pages are in ${GHPAGESDIR}."
