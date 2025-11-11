#!/bin/bash
echo " Enter the filename to count the character's "
read filename
i=1
while read line
do 
count=`echo $line | wc -c`
echo "the number of char in a line $1 is $count"
i=`expr $i + 1`
done < $filename
