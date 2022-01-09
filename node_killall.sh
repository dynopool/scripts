## killall sends a signal to all processes running any of the specified commands.
## If the systemctl stop command does not work, you can use the killall -s 2 cardano-node command
## This forces the node to stop.  Should not need but to verify the node has stopped with the systemctl command.

#!/bin/bash
killall -s 2 cardano-node
