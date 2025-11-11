#!/bin/bash
set -x
checkprocess=" sshd jenkins "
for i in $checkprocess 
do
       ps -C $i
if [ $? -ne 0 ] 
then
echo "$i is not running"
mail -s "$checkprocess services are not working" vivekco1998@gmail.com
fi
done

