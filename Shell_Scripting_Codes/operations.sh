#!/bin/bash
echo "enter the value to find the cube"
read num
cube=`expr $num \* $num \* $num`
findingcubes=$((num * num * num))
cubes= $(" num^3 " | bc)
result= \$num**5
echo "The the cube value is $cube"
echo " value of $findingcubes"
echo "The value of the power $result"


