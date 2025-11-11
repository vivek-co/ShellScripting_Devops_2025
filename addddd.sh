#!/bin/bash

echo "enetr the filename"
read filename
i=1
while read words
do
	count=`echo $words | wc -c`
	echo "the number of char in $i is $count"
	i=`expr $i + 1`
done < $filename






