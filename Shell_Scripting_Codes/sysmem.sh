#!/bin/bash
usage=`df -h . | awk -F " " 'NR>1 {print $(NF-1)}' | sed 's/%//g'`
if [ $usage -gt 30 ]
 then
	mail -s " memory usage reached threshold value" vivekco1998@gmail.com
	echo "momory usage  value reached the threshold $usage"
fi

