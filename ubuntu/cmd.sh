#!/bin/bash

cheetahcoind -daemon
sleep 30
cd ~/cheetah_cpuminer-chta-beta2
./cheetah.sh
sleep infinity
