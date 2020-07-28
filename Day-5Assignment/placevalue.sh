#!/bin/bash -x
echo "enter a number";
read n;
if [[ $n -le 9 ]]
then
	echo "$n is in units place";
elif [[ $n -ge 10 && $n -le 99 ]]
then
	echo "$n is in tens place";
elif [[ $n -ge 100 && $n -le 999 ]]
then
	echo "$n is in hundreds place";
elif [[ $n -ge 1000 && $n -le 9999 ]]
then
	echo "$n is in thoudands place";
fi

