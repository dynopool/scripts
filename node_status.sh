## This assumes you are using systemd for your stakepool.
## systemctl may be used to introspect and control the state of the "systemd" system and service manager.
## This command will output the status the systemd cardano node service including whether it is running or inactive.  

#!/bin/bash
sudo systemctl status cardano-node
