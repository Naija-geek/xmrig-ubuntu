#!/bin/bash

sudo apt install git build-essential cmake automake libtool autoconf
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
echo './xmrig -o minenano.com:3333 -a rx -k -u nano_3zgtuksfc6tuwqw1qaesbt8g4746tdty9t6xm4jm48o6oazsaspyob8przqc -p x' > start_mining.sh; chmod +x start_mining.sh
