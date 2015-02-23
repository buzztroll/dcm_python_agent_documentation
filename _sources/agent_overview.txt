.. raw:: latex
  
      \newpage

.. _agent_overview:

Overview
--------

   The Dell Cloud Manager python agent is a lightweight application written in python that communicates with the Dell Cloud Manager provisioning server and provides enhanced automation and management capabilities.
   The python agent is only supported on Linux virtual machines. When it is installed on a Linux virtual machine that is launched from Dell Cloud manager it provides functions such as:

   * Server health monitoring
   * Automated software installation/configuration
   * Data set installations
   * Backups
   * Disk volume management

   The Dell Cloud Manager python agent also contains a set of associated Bash scripts that are responsible for executing some actions on the server and are extensible by end users.

   All communication between the python agent and the Dell Cloud Manager provisioning server is initiated from the python agent and is is encrypted using SSL. 
   The python agent opens a socket connection to port 443 on the Dell Cloud Manager provisioning server and can then receive commands to be executed on the virtual machine and can respond back to the Dell Cloud Manager server using the same connection. No inbound ports on the Linux virtual machine running the python agent need to be opened.  The python agent will continuously attempt to reconnect the connection to the Dell Cloud Manager server if the connection is lost.

   Every command executed by the python agent comes with a globally unique identifier. This identifier is used to ensure that the agent only executes a received command one time. The commands and identifiers are kept in a sqlite database file. Because of this the agent system can survive reboots.

   The Dell Cloud Manager python agent is supported on many popular GNU/Linux distributions such as Ubuntu, Debian, Cent OS, REHL and Fedora. 
