.. raw:: latex
  
      \newpage

.. _agent_installation_syntax:

Interactive install syntax
--------------------------

  Issue the following command to install the Dell Cloud Manager python agent in "interactive mode".

  :samp:`bash <( curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh )`

  You will be prompted for:

  1. Cloud provider of the launched server where the python agent will be installed.
  2. Web socket URL string for the Dell Cloud Manager provisioning server agent manager service.

    Format: wss://\ **hostname_or_ipaddress**\/agentManager

  3. Whether or not to start the agent at system boot (default is Yes)
  4. Whether or not to install the latest Chef client (default is No)

  You can see an example of an interative installation :ref:`here.<agent_interactive_install>`
 
Non-interactive install syntax
------------------------------

  Issue the following command to install the Dell Cloud Manager python agent in "non-interactive mode".

  :samp:`curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - [options]`

  .. code-block:: text

    Options: 

          -c, --cloud           cloud Provider 
                                --------------------------------------------------------------
                                Amazon, Azure, Bluelock, CloudStack, CloudStack3,
                                Eucalyptus, Google, Joyent, Konami, OpenStack, Other, UNKNOWN

          -u, --url             Web socket URL of the Dell Cloud Manager provisioning server agent manager service
                                Format: wss://hostname_or_ipaddress/agentManager 
                                Default: wss://dcm.enstratius.com/agentManager                                    

          -B, --on-boot         Configure the python agent to start at system boot (default is not to boot at restart)

          -m, --mount-point     Mount point where DCM stores data (default /mnt/dcmdata)

          -t, --tmp-path        Path to the temporary directory  (default /tmp)

          -U, --user            Linux user that the python agent will run as (default dcm)
                                If you specify a different user then that user must already exist.

          -o, --chef-client     Install the latest Chef client                                     
        
          -p, --base-path       Base path where to install the agent (default /dcm) 

          -r, --reload-conf     Reload the configuration file (used to populate defaults)             

          -L, --loglevel        Log level for logging (ERROR, WARN, INFO, DEBUG)                          

          -l, --logfile         Name of the python agent logfile (default agent.log)
 
          -v, --verbose         Increase the amount of output produced by the script

  You can see an example of an Non-interactive installation :ref:`here.<agent_noninteractive_install>`          

  .. note:: In most cases it is not necessary to specify the **-c** parameter as the python agent can detect the cloud. 

  .. warning:: The default value for the web socket URL is **wss://dcm.enstratius.com/agentManager** which is the Dell Cloud Manager SaaS provisioning server. This needs to be changed for On-Premise environments.
