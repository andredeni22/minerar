#!/bin/sh
apt-get update -y; apt-get upgrade -y
apt-get install htop
apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev libncurses5-dev pkg-config yasm
git clone https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi
./build.sh
./cpuminer -a yescrypt -o stratum+tcp://yescrypt.mine.zpool.ca:6233 -u D6g75t4KT2es1UULfTn5CF3SQtZG49PmJt -p c=DOGE
