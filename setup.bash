#!/usr/bin/env bash

# Check if wormhole/ repo exists.
# If it doesn't then clone and set up guardians
if [ ! -d "./wormhole" ] 
then
    echo "cloning wormhole repo"
    git clone https://github.com/wormhole-foundation/wormhole

    echo "building worm cli tool"
    cd wormhole/clients/js
    make install
    cd -
fi

#echo "building eth"
#cd wormhole/ethereum
#make build
#cd -

echo "init guardian set"
cd wormhole
pwd
bash scripts/guardian-set-init.sh 1
cd - 
