#!/bin/bash

ls -lrt | awk -F " " 'NR>1 {print $NF}' > outputfile
total=`cat outputfile | wc -l`
echo "enter the number of values to retain"
read count
count=`expr $total - $count`
head -$count outputfile

