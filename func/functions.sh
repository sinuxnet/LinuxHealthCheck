#!/bin/bash
prnt_msg()
{
	lengthV1=`echo $1 | wc -c`
	v2=$((34-$lengthV1))

 	echo
        echo "----------------------------------------"
        echo -n "-------$1"
	i=0
	while [ $i -lt $v2 ]
	do
		echo -n "-"
		i=$[$i+1]
	done
	echo
        echo "----------------------------------------"
}

formatter()
{
	sed -r 's/ +/,/g' | sed -r 's/:,/:\t/g' | column -t | sed -r 's/,/ /g'
}

