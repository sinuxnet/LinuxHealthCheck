#!/bin/bash
df -Pkh -T -x overlay -x tmpfs -x squashfs -x devtmpfs > /tmp/df.status

while read DISK
do
	LINE=`echo $DISK | awk '{print $1,"\t",$6,"\t",$5," used","\t",$4," free space"}'`
	echo -e $LINE
	echo
done < /tmp/df.status
#
#while read DISK
#
#do
#
#USAGE=`echo $DISK | awk '{print $5}' | cut -f1 -d%`
#
#if [ $USAGE -ge 95 ]
#
#then
#
#STATUS='Unhealthy'
#
#elif [ $USAGE -ge 90 ]
#
#then
#
#STATUS='Caution'
#
#else
#
#STATUS='Normal'
#
#fi
#
#LINE=`echo $DISK | awk '{print $1,"\t",$6}'`
#
###here we print result with status
#echo -ne $LINE "\t\t" $STATUS
#
#echo
#
#done < /tmp/df.status
#
##here we remove df.status file
#
rm -f /tmp/df.status
