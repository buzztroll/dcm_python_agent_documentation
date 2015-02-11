.. raw:: latex
  
      \newpage

.. _agent_operation:

Agent Operation
---------------

The ``service`` command can be used to start the agent, stop the agent, restart the agent or reload the agent's configuration from the agent.conf file.

  Syntax:

    service dcmagent [start|stop|restart|reload]

As an alternative you can issue the following command:

    /etc/init.d/dcm-agent [start|stop|restart|reload]

After installation the agent is not automatically started.  To start it issue the service start command:

    .. code-block:: bash

       service dcm-agent start

You can display detailed status on the agent by issuing this command:

    ``/opt/dcm-agent/embedded/agentve/bin/dcm-agent status``

    .. code-block:: text

        WARNING:root:Config file locations /root/.dcm/agent.conf does not exist
        INITIALIZED
            Commands processed:            4
            Commands rejected:             0
            Commands being processed:      0
            Commands being replying to:    0
            Replies rejected:              0
        RUNNING
            Started at:                    2015-02-11 20:29:12
            User:                          dcm
            Status:                        sleeping
            Pid:                           6439
 