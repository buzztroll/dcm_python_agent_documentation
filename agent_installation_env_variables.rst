.. raw:: latex
  
      \newpage

.. _agent_installation_env_variables:

Environment Variables
---------------------

These optional environment variables can be set prior to installing the agent to direct the installer.

.. code-block:: text

  AGENT_LOCAL_PACKAGE=<path>            When set the script will look for the distribution package at the given path on the local file system instead of downloading it.

  AGENT_BASE_URL=<url>                  This is the base path to an HTTP repository where the packages are kept.
                                        For example: https://s3.amazonaws.com/dcmagentunstable.
                                        Packages will be found under that url with a name that matches: dcm-agent-<distribution>-<version>-<architecture>.<pkg type>
                                        For example: dcm-agent-ubuntu-10.04-amd64.deb

  AGENT_UNSTABLE                        When set (not NULL), the script will download and install the latest unstable version of the dcm-agent.

  AGENT_VERSION=<version>               To download a specific version of the agent set this to the version.

  DCM_AGENT_FORCE_DISTRO_VERSION=       Instead of detecting the distribution version force it to this env string.
