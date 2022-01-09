## Credits to the coincashew team https://www.coincashew.com/
## To be run on block producer node
## Make sure the port matches your port
## assums you have the files present in the directory including: stakepoolid.txt, vrf.skey
## also assumes you have the path to your node (such as cardano-my-node) set in your $PATH and labeled $NODE_HOME

#!/bin/bash

/usr/local/bin/cncli sync --host 127.0.0.1 --port 6001 --no-service

MYPOOLID=$(cat $NODE_HOME/stakepoolid.txt)
echo "LeaderLog - POOLID $MYPOOLID"

SNAPSHOT=$(/usr/local/bin/cardano-cli query stake-snapshot --stake-pool-id $MYPOOLID --mainnet)
POOL_STAKE=$(echo "$SNAPSHOT" | grep -oP '(?<=    "poolStakeSet": )\d+(?=,?)')
ACTIVE_STAKE=$(echo "$SNAPSHOT" | grep -oP '(?<=    "activeStakeSet": )\d+(?=,?)')
MYPOOL=`/usr/local/bin/cncli leaderlog --pool-id $MYPOOLID --pool-vrf-skey ${NODE_HOME}/vrf.skey --byron-genesis ${NODE_HOME}/mainnet-byron-genesis.json --shelley-genesis $>
echo $MYPOOL | jq .

EPOCH=`echo $MYPOOL | jq .epoch`
echo "\`Epoch $EPOCH\` 🧙🔮:"

SLOTS=`echo $MYPOOL | jq .epochSlots`
IDEAL=`echo $MYPOOL | jq .epochSlotsIdeal`
PERFORMANCE=`echo $MYPOOL | jq .maxPerformance`

echo "\`MYPOOL - $SLOTS \`🎰\`,  $PERFORMANCE% \`🍀max, \`$IDEAL\` 🧱ideal"
