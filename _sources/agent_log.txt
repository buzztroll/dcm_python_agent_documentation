.. raw:: latex
  
      \newpage

.. _agent_log:

agent.log file
---------------

By default the path to the python agent log is **/dcm/logs/agent.log**.  

This message in the log indicates a successful connection to the agentManager component running in the Dell Cloud Manager provisioning server:

    ``INFO 2015-02-11 20:11:01,529 [dcm.agent.log.to.agent.manager] utils.py:282 [(REQUEST=None)] A handshake was successful, starting the workers``

.. literalinclude:: files/agent_log.txt
   :language: text 
   :emphasize-lines: 6

