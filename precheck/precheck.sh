MPSTAT=`which mpstat`
MPSTAT=$?
if [ $MPSTAT != 0 ]
then
        apt install sysstat
fi
