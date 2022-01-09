# scripts
Location to store simple maintenace scripts for the nodes to quickly deploy in the event of a complete rebuild.

These are for informational and entertainment purposes only. They are also present for reference.  Set up for the particular instance of Dynopool and will need to be modified to fit the needs of any other pool.  What I'm saying is ... use at your own risk. 

UTXO_balance.sh -- returns information on the balance and UTXO of an address. Note this returns current information and not historic information.

node_follow.sh -- assuming you have cardano-node set up as a systemd service, envoking this command will send the node output to the screen. CTRL+C will stop the follow command without stopping the node.

node_killall.sh -- Kills the Node. Use node_stop.sh first

node_restart.sh -- Starts or Restarts the node and assums you have a systemd cardano node service already set up.

node_status.sh -- provides a static shot of the current node status whether it is active or inactive.

node_stop.sh -- stops the systemd cardano-node service.

stake_napshot_current.sh -- calculates stake pool's expected slot list for current epoch ( https://www.coincashew.com/coins/overview-ada/guide-how-to-build-a-haskell-stakepool-node/18.-operational-and-maintenance-tips)

stake_snapshot_next.sh -- calculates stake pool's expected slot list for next epoch (run 36 hours before next epoch) (from https://www.coincashew.com/coins/overview-ada/guide-how-to-build-a-haskell-stakepool-node/18.-operational-and-maintenance-tips)
