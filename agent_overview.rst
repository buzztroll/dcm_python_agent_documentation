.. raw:: latex
  
      \newpage

.. _agent_overview:

Overview
--------

   The Dell Cloud Manager Agent (dcm-agent) is a lightweight application that runs inside of your Linux VM and expands the capabilities of the Dell Cloud Manager (DCM) to provide functions such as:

   * Server health monitoring
   * Automated software installation/configuration (puppet and chef are supported)
   * User management
   * Backups
   * Disk volume management

   The dcm-agent is intended to replace the `legacy agent <http://www.enstratius.com/support/documentation/the-enstratus-application/document-agent/Agent-Overview>`_ for servers that are running Linux.  Windows servers should use the legacy agent.

   The communication channel between the dcm-agent and the DCM is encrypted using SSL. The dcm-agent opens a websocket connection to port 443. That connection is then used to send commands to the dcm-agent and receive replies from it. No inbound ports on the Linux virtual machine running the dcm-agent need to be opened.

   The dcm-agent is supported on many popular GNU/Linux distributions such as Ubuntu, Debian, Cent OS, RHEL and Fedora.
