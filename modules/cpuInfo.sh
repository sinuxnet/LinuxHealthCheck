#!/bin/bash
i=0
while [ $i -lt $CPUs ]
do
        echo "CPU$i: `mpstat -P ALL | awk -v var=$i '{ if ($3 == var ) print $4 }' `"
        let i=$i+1
done
