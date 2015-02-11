.. raw:: latex
  
      \newpage

.. _agent_installation_syntax:

Installation Command Syntax
---------------------------

There are 2 ways to install the Dell Cloud Manager python agent:

1. Interactive mode
2. Non-interactive mode (desired options can be specified on the command line)

Interactive mode
~~~~~~~~~~~~~~~~

Run the following command below with root authority to install the python agent in interactive mode.

  :samp:`bash <( curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh )`

  The curl command downloads a bash shell script named ``installer.sh`` that will install the agent, and then executes the ``installer.sh`` bash shell script.  You will be prompted for:

  1. Cloud provider that the launched server where the python agent will be installed.
  2. Contact web socket URL string for the Dell Cloud Manager provisioning server agent manager.

    Format: wss://\ **hostname_or_ipaddress**\/agentManager

  3. Whether or not to start the agent at system boot (default is Yes)
  4. Whether or not to install the latest Chef client (default is No)
 
Non-interactive mode
~~~~~~~~~~~~~~~~~~~~

Run the following command below with root authority to install the python agent in non-interactive mode.

  :samp:`curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh | bash -s - [options]`

  .. code-block:: text

    Options: 

          -c, --cloud                cloud Provider 
                                     --------------------------------------------------------------
                                     Amazon, Azure, Bluelock, CloudStack, CloudStack3
                                     Eucalyptus, Google, Joyent, Konami, OpenStack, Other, UNKNOWN

          -u, --url                  Web socket URL of the Dell Cloud Manager provisioning server agent manager
                                     Format: wss://hostname_or_ipaddress/agentManager 
                                     Default: wss://dcm.enstratius.com/agentManager                                    

          -B, -on-boot               Configure the python agent to start at system boot (default)

          -m, --mount-point          Mount point where DCM stores data (default /mnt/dcmdata)

          -t, --tmp-path             Path to the temporary directory  (default /tmp)

          -U, --user                 Linux user that the python agent will run as (default dcm)
                                     If you specify a different user then that user must already exist.
        
          -p, --base-path            Base path where to install the agent (default /dcm)               

          -L, --loglevel             Log level for logging (ERROR, WARN, INFO, DEBUG)                          

          -l, ---logfile             Name of the python agent logfile (default agent.log)

  .. note:: In most cases it is not necessary to specify the **-c** parameter as the python agent can detect the cloud. 

  .. warning:: The default value for the web socket URL is **wss://dcm.enstratius.com/agentManager** which is the Dell Cloud Manager SaaS provisioning server. This needs to be changed for On-Premise environments.