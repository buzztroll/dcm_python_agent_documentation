.. raw:: latex
  
      \newpage

.. _agent_interactive_install:

Interactive Install
-------------------

Run the following command below with root authority to install the python agent in interactive mode.

  :samp:`bash <( curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh )`

  .. code-block:: text
    :emphasize-lines: 19,21,35-36,45

    root@ip-10-29-59-177:~# bash <( curl -k http://s3.amazonaws.com/dcmagentnightly/installer.sh )

    *** some display output from the install has been omitted in order to reduce clutter ***

    Get instance ID called
    Instance ID is i-ce752c3f
     0) Amazon
     1) Azure
     2) Bluelock
     3) CloudStack
     4) CloudStack3
     5) Eucalyptus
     6) Google
     7) Joyent
     8) Konami
     9) OpenStack
    10) Other
    11) UNKNOWN
    Select your cloud (Amazon): 0
    Please enter the contact string of the agent manager (wss://dcm.enstratius.com/agentManager)
    wss://66.57.3.53/agentManager
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
    Would you like to start the agent on boot? (Y/n)
    Y
      Adding system startup for /etc/init.d/dcm-agent ...
        /etc/rc0.d/K20dcm-agent -> ../init.d/dcm-agent
        /etc/rc1.d/K20dcm-agent -> ../init.d/dcm-agent
        /etc/rc6.d/K20dcm-agent -> ../init.d/dcm-agent
        /etc/rc2.d/S20dcm-agent -> ../init.d/dcm-agent
        /etc/rc3.d/S20dcm-agent -> ../init.d/dcm-agent
        /etc/rc4.d/S20dcm-agent -> ../init.d/dcm-agent
        /etc/rc5.d/S20dcm-agent -> ../init.d/dcm-agent
    (Optional) Would you like to install chef client? (Y/N) N
    To start the agent now please run:
    /etc/init.d/dcm-agent start
    root@ip-10-29-59-177:~#