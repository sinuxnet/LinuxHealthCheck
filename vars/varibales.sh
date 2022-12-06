#!/bin/bash
HostName=`hostname`
KernelVersion=`uname -r`
Uptime=`uptime | sed 's/.*up \([^,]*\), .*/\1/'`
LastReboot=`who -b | awk '{print $3,$4}'`
CPUs=`lscpu | grep -e "^CPU(s):" | cut -f2 -d: | awk '{print $1}'`
LoadAverage=`uptime | awk -F'load average:' '{ print $2 }' | cut -f1 -d,`
HealthStatus=`uptime | awk -F'load average:' '{ print $2 }' | cut -f1 -d, | awk '{if ($1 > 2) print "Unhealthy"; else if ($1 > 1) print "Caution"; else print "Normal"}'`


