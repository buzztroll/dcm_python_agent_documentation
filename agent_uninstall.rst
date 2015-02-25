.. raw:: latex
  
      \newpage

.. _agent_uninstall:

Uninstalling the Agent
----------------------

Perform the following 4 steps below with **root** authority to uninstall the dcm-agent:

1. Stop the agent

  .. code-block:: bash

    service dcm-agent stop

2. Remove the **dcm-agent** package

  Debian, Ubuntu Linux distributions

    .. code-block:: bash

      apt-get remove dcm-agent -y

  CentOS, Fedora, RHEL distributions

    .. code-block:: bash

      yum remove dcm-agent -y

3. Remove the symlinks for the service scripts used to start and stop the agent

  .. code-block:: bash

    find /etc/rc?.d -name "[SK][0-9][0-9]dcm-agent" -exec rm -f {} \;

4. Remove the **dcm** user account

  .. code-block:: bash

    userdel dcm

