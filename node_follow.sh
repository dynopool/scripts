## This assumes you are using systemd for your stakepool.
## journalctl may be used to query the contents of the systemd(1) journal as written by systemd-journald.service.
## Displays the cardano-node output in realtime .. CTRL-C to exit without stopping your node.

#!/bin/bash
journalctl --unit=cardano-node --follow
