#!/bin/bash

if [ $# -ne 2 ]
then
echo " pass 2 args "
exit 1
fi
if [ $1 -gt $2 ]
then
echo " $1 is greater than $2 "
else 
echo " $2 is greater than $1 "
fi

