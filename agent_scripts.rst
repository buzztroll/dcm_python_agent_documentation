.. raw:: latex
  
      \newpage

.. _agent_scripts:

Scripts
-------

The agent scripts are designed to be extended and customized. By default the agent scripts are installed in the **/dcm/bin** directory.
However the scripts in the **/dcm/bin** directory are not designed to be edit directly as these scripts are overwritten during an upgrade.
Instead use the **/dcm/custom/bin** directory to run custom scripts. Custom scripts can be developed to run before, in place of and/or after the scripts provided in the **/dcm/bin** directory.


To run a script before the default DCM agent script, place a script named $scriptName\ **-pre** in the **/dcm/custom/bin** directory.

To run a script in place of the default DCM agent script, place a script of the same name in the **/dcm/custom/bin** directory.

To run a script after the default DCM agent script, place a script named $scriptName\ **-post** in the **/dcm/custom/bin** directory.

For example, to modify the **addUser** script do the following:

* **/dcm/custom/bin/addUser**      - if this script exists, it will completely replace this script **/dcm/custom/bin/addUser**
* **/dcm/custom/bin/addUser-pre**  - if this script exists, it will be executed before this script **/dcm/custom/bin/addUser**
* **/dcm/custom/bin/addUser-post** - if this script exists, it will be executed after this script  **/dcm/custom/bin/addUser**

