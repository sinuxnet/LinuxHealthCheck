#!/bin/bash

source ./precheck.sh
source ./functions.sh

# ----- start of script -----
source ./varibales.sh

prnt_msg "Host Info" 
source hostInfo.sh | formatter
	#sed -r 's/ +/,/g' | sed -r 's/:,/:\t/g' | column -t | sed -r 's/,/ /g'  

prnt_msg "CPU Info"
source cpuInfo.sh | formatter


prnt_msg "Process Info"
source process.sh 











































