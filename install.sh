#!/bin/bash

sudo apt install git build-essential cmake automake libtool autoconf

git clone https://github.com/xmrig/xmrig.git

mkdir xmrig/build && cd xmrig/scripts

./build_deps.sh && cd ../build

cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)

read -p "Enter your wallet address: " user_input

echo './xmrig -o minenano.com:3333 -a rx -k -u $user_input -p x' > start_mining.sh


chmod +x start_mining.sh

./start_mining.sh
