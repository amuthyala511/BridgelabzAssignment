#!/bin/bash -x
read n;
weekday=$n;
if [[ $weekday -eq 1 ]]
then
	echo "$weekday is Sunday";
elif [[ $weekday -eq 2 ]]
then
	echo "$weekday is Monday";
elif [[ $weekday -eq 3 ]]
then
	echo "$weekday is Tuesday";
elif [[ $weekday -eq 4 ]]
then
	echo "$weekday is Wednesday";
elif [[ $weekday -eq 5 ]]
then
	echo "$weekday is Thursday";
elif [[ $weekday -eq 6 ]]
then
	echo "$weekday is Friday";
elif [[ $weekday -eq 7 ]]
then
	echo "$weekday is Saturday";
else
	echo "A week has only 7 days";
fi
