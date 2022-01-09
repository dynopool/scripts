## This assumes you are using systemd for your stakepool.
## systemctl may be used to introspect and control the state of the "systemd" system and service manager.
## This command will start the systemd cardano node service which will run in the background.
## Use node_follow.sh to view the node output.

#!/bin/bash
sudo systemctl reload-or-restart cardano-node
