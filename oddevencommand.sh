#!/bin/bash

echo " $1,$2,$3,$4 Please enter the value "

EO=`expr $2 % 2`

if [ $EO -eq 0 ]
then
echo " The value provided is an even  number "

else
echo " The value provided is an odd number "

fi
