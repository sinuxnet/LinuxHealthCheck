#!/bin/bash

source ./precheck/precheck.sh
source ./func/functions.sh
source ./vars/varibales.sh

# ----- start of script -----

sleep 1.5
prnt_msg "Host Info"
source ./modules/hostInfo.sh | formatter
#sed -r 's/ +/,/g' | sed -r 's/:,/:\t/g' | column -t | sed -r 's/,/ /g'

sleep 1.5
prnt_msg "CPU Info"
source ./modules/cpuInfo.sh | formatter

sleep 0.7
prnt_msg "Process Info"
source ./modules/process.sh

sleep 1.5
prnt_msg "Disk Info"
source ./modules/disk.sh | sed 's/Filesystem/MountPoint/' |  sed 's/free space/freespace/g' | column -t |  sed -r 's/ +freespace/ free space/g'

sleep 1

