#!/bin/bash

echo "Please enter the value to check weather it is prime or not"

read prime

if [ $(factor $prime | awk '{print NF-1}') -eq 1 ]
then
	echo " then its a prime number "
else 
	echo " then its not a prime number"
fi

