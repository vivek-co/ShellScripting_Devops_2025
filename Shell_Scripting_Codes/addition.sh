#!/bin/bash

echo "eneter the first value"
read num
echo "enter the second value"
read num1
echo "enter the third value"
read num3
sum=$num+$num1+$num3
sum=` expr $num + $num1 + $num3`
mul=`expr $num \* $num1 \* $num3`
sub=`expr $num \- $num1 \- $num3`
div=`expr $num / $num3`
mod=`expr $num % $num1`

echo "Displaying addition the value $sum"
echo "Displaying multiplication value$mul"
echo "Displaying value of substraction $sub"
echo "Displaying the division value $div"
echo "Displaying the mod value $mod"
