## This assumes you are using systemd for your stakepool.
## systemctl may be used to introspect and control the state of the "systemd" system and service manager.
## This command will stop the cardano node service.
## Use node_restart.sh to restart the node or node_status.sh to check the status.

#!/bin/bash
sudo systemctl stop cardano-node
