## Checking Reward Balances
## Block Producer
##
#!/bin/bash
cardano-cli query stake-address-info \
 --address $(cat stake.addr) \
 --mainnet
