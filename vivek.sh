#!/bin/bash
num=10
echo "the value is $num"

echo $0 : $0 contains the name of the file

echo $0 | awk -F "/" '{print NF}'

echo $2 $1  : $1 represents the first argument which is passwed and the $2 represents the second args that is is passed and so on.

echo $# : $# is used to get to know how many args that are passed

echo $* : $* All the args are paased as a string

echo $@ : $@ all the args are passed in a array format

echo $$ : $$to get the process id that is currently running

echo $! : $!to get to know that the process id of the last command went into a backgorund

echo $? : $? status of the last executed command and if the o/p is 0 meaning the last command was successful, if the value is non zero then its a failure of last command
