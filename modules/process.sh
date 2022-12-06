#!/bin/bash
echo "Memory Top 10"
echo "PID %MEM RSS COMMAND"
ps aux | awk '{print $2, $4, $6, $11}' | sort -k3rn | head -n 10 | column -t
echo
echo "CPU Top 10"
top b -n1 | head -15 | tail -11 | awk '{print $1,$9,$12}' | column -t 

