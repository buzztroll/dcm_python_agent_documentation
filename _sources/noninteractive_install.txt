.. raw:: latex
  
      \newpage

.. _agent_noninteractive_install:

Non-interactive Install
-----------------------

Run the following command below with **root** authority to install the python agent in non-interactive mode.
The only option specified in this example is the Web Socket URL for the dell Cloud Manager provisioning server where the agent manager is running.
In most agent installations in On-Premise Dell Cloud Manager server environments that is the only required option.

  :samp:`curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - -u wss://66.57.3.53/agentManager`

  .. code-block:: text
    :emphasize-lines: 26

    root@ip-10-29-59-177:~# curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - -u wss://66.57.3.53/agentManager
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
    Selecting previously unselected package dcm-agent.

    *** some display output from the install has been omitted in order to reduce clutter ***

    Changing ownership to dcm:dcm
    Done
    =======================================================
    The installation of the DCM Agent has completed.
    To start the agent, run the following command.
    To configure the agent run /dcm/bin/dcm-configure.sh -i -r /dcm/etc/agent.conf
    /etc/init.d/dcm-agent start
    =======================================================
    /opt/dcm-agent/embedded/bin/dcm-agent-configure -u wss://66.57.3.53/agentManager
    Using CloudStack
    Get metadata es:dmcm-launch-id
    Running without the job runner process
    Metadata value of es:dmcm-launch-id is None
    Get instance ID called
    Instance ID is None
    Get OpenStack metadata uuid
    Attempting to get metadata at http://169.254.169.254/openstack/2012-08-10/meta_data.json
    Failed to get the OpenStack metadata
    Traceback (most recent call last):
      File "/opt/dcm-agent/embedded/agentve/lib/python2.7/site-packages/dcm_agent-0.9.11_1e41f746f36c0bfe6f44f0ed67d12ba08462140d-py2.7.egg/dcm/agent/cloudmetadata.py", line 281, in get_cloud_metadata
        jdict = json.loads(json_data)
      File "/opt/dcm-agent/embedded/lib/python2.7/json/__init__.py", line 338, in loads
        return _default_decoder.decode(s)
      File "/opt/dcm-agent/embedded/lib/python2.7/json/decoder.py", line 366, in decode
        obj, end = self.raw_decode(s, idx=_w(s, 0).end())
    TypeError: expected string or buffer
    Script location /dcm/bin/getDhcpAddress
    Running without the job runner process
    The CloudStack metadata server is http://169.254.1.0
    Get metadata latest/instance-id
    The CloudStack metadata server is http://169.254.1.0
    Attempting to get metadata at http://169.254.1.0/latest/instance-id
    Metadata value of latest/instance-id is None
    Get instance ID called
    Instance ID is None
    Get metadata instance-id
    Attempting to get metadata at http://169.254.169.254/latest/meta-data/instance-id
    Metadata value of instance-id is i-ce752c3f
    Get instance ID called
    Instance ID is i-ce752c3f
    Making the needed directories...
        /dcm
        /dcm/bin
        /dcm/bin
        /dcm/custom
        /dcm/custom/bin
        /dcm/etc
        /dcm/logs
        /dcm/home
        /dcm/cfg
        /tmp
    ...Done.
    Changing ownership to dcm:dcm
    To start the agent now please run:
     /etc/init.d/dcm-agent start

  :download:`Click here to view the entire install output <files/noninteractive_install_output.txt>`
