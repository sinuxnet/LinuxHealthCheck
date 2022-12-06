#!/bin/bash

source ./precheck/precheck.sh
source ./func/functions.sh

# ----- start of script -----
source ./vars/varibales.sh

prnt_msg "Host Info" 
source ./modules/hostInfo.sh | formatter
	#sed -r 's/ +/,/g' | sed -r 's/:,/:\t/g' | column -t | sed -r 's/,/ /g'  

prnt_msg "CPU Info"
source ./modules/cpuInfo.sh | formatter


prnt_msg "Process Info"
source ./modules/process.sh

