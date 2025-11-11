#!/bin/bash

echo " Please enter the value "
read int

#EO=`expr $int % 2`

if [ $((int % 2 )) -eq 0 ]
then
echo " The value provided is an even  number "

else 
echo " The value provided is an odd number "

fi
