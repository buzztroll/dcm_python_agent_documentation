.. raw:: latex
  
      \newpage

.. _agent_installation_env_variables:

Environment Variables
---------------------

By default the agent installer detects the Linux distribution of the server where the installer is running on and will download and install the latest appropriate agent distribution.

These optional environment variables can be set prior to running the agent installer. They affect some decisions made by the installer and allow for advanced custom installs.

.. note:: In most cases it is not necessary to use (export) any of these environment variables.

.. code-block:: text

  AGENT_LOCAL_PACKAGE=<path>        This variable will direct the installer to use the specified file-system agent distribution package instead of downloading it.
                                    Example: export AGENT_LOCAL_PACKAGE="/tmp/dcm-agent-ubuntu-14.04-amd64-latest.deb"

  AGENT_BASE_URL=<url>              This setting will direct the installer to use the specified URL as the base URL for downloading the agent distribution package.
                                    By default the agent installer downloads the agent distribution packages from https://dcmagentnightly.s3.amazonaws.com

                                    To direct the installer to download the agent distribution package from the unstable agent repository specify:    
                                    export AGENT_BASE_URL="https://s3.amazonaws.com/dcmagentunstable"

  AGENT_UNSTABLE                    If this variable exists then the installer will download and install the latest unstable version of the agent distribution package.
                                    Example: export AGENT_UNSTABLE=YES

  AGENT_VERSION=<version>           This setting will direct the installer to download the specified version of the agent distribution package.
                                    Note: this is the version of the Dell Cloud Manager agent distribution package, not the version of the Linux distribution.
                                    Example:  export AGENT_VERSION="9.12"

  DCM_AGENT_FORCE_DISTRO_VERSION=   This setting will direct the installer to use the specified agent distribution package instead of letting the installer determine it.
                                    Example:  export DCM_AGENT_FORCE_DISTRO_VERSION="dcm-agent-rhel-6.6-x86_64-0.9.12.rpm"

.. note::

  The agent distribution packages have this name convention: dcm-agent-<distribution>-<version>-<architecture>-<agent-version>.<pkg type>

  .. code-block:: text

    Where:
            <distribution>   is the linux distribution name (e.g. centos, debian, rhel, or ubuntu)
            <version>        is the linux distribution version (e.g. 12.04)
            <architecture>   is the linux distribution architecture (e.g. i386, x86_64 or amd64)
            <version>        is the python agent version (e.g. latest, 0.9.11, 0.9.12, etc.)
            <pkg type>       is the linux distribution package type (e.g. deb or rpm)
