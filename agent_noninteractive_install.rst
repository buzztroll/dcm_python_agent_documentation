.. raw:: latex
  
      \newpage

.. _agent_noninteractive_install:

Non-interactive Install
-----------------------

The following curl command will install the latest python agent and configure the agent to communicate to this agentManager server: **wss://66.57.3.53/agentManager**. 
For most agent installs in On-Premise Dell Cloud Manager server environments that is the only required option. The agent will also be started after the install finishes. 

  :samp:`curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - -u wss://66.57.3.53/agentManager  && service dcm-agent start`

  .. code-block:: text

    curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - -u wss://66.57.3.53/agentManager
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100 10038  100 10038    0     0   243k      0 --:--:-- --:--:-- --:--:--  280k
    /usr/bin/sudo
    determining architecture...
    done
    ubuntu-12.04-amd64
    Starting the installation process...
    Downloading DCM Agent from https://es-pyagent.s3.amazonaws.com/dcm-agent-ubuntu-12.04-amd64.deb
    This may take a few minutes.
    Downloading https://es-pyagent.s3.amazonaws.com/dcm-agent-ubuntu-12.04-amd64.deb ...
    Installing DCM Agent.
    
    *** The remaining output from the install has been omitted in order to reduce clutter ***

  :download:`Click here to view the entire install output <files/noninteractive_install1_output.txt>`

The following curl command will install the latest python agent, configure it for the OpenStack cloud, install the latest Chef client, and configure the agent to communicate to
this agentManager server: **wss://66.57.3.53/agentManager**. The agent will also be started after the install finishes.

  :samp:`curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - -c OpenStack --chef-client -u wss://66.57.3.53/agentManager && service dcm-agent start`

  .. code-block:: text

    curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - -c OpenStack --chef-client -u wss://66.57.3.53/agentManager && service dcm-agent start
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
    100 11902  100 11902    0     0  58303      0 --:--:-- --:--:-- --:--:-- 91553
    determining architecture...
    done
    ubuntu-12.04-amd64
    Starting the installation process...
    Downloading DCM Agent from https://s3.amazonaws.com/dcmagentunstable/dcm-agent-ubuntu-12.04-amd64.deb
    This may take a few minutes.
    Downloading https://s3.amazonaws.com/dcmagentunstable/dcm-agent-ubuntu-12.04-amd64.deb ...
    Installing DCM Agent.

    *** The remaining output from the install has been omitted in order to reduce clutter ***

  :download:`Click here to view the entire install output <files/noninteractive_install2_output.txt>`
