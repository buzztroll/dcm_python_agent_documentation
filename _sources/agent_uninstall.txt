.. raw:: latex
  
      \newpage

.. _agent_uninstall:

Uninstalling the Agent
----------------------

Perform the following 3 steps to uninstall the python agent:

1. Remove the **dcm-agent** package

  Debian, Ubuntu Linux distributions

    .. code-block:: bash

      apt-get remove dcm-agent -y

  CentOS, Fedora, RHEL distributions

    .. code-block:: bash

      yum remove dcm-agent -y

2. Remove the symlinks for the service scripts used to start and stop the agent

    .. code-block:: bash

      find /etc/rc?.d  -name ???dcm-agent -exec rm -f {} \;

3. Remove the **dcm** user account

    .. code-block:: bash

      userdel dcm

