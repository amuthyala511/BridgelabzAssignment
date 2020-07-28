#!/bin/bash -x
echo "enter the digit";
read n;
if [[ $n -eq 0 ]]
then
	echo "$n in words is: zero ";
elif [[ $n -eq 1 ]]
then
	echo "$n in words is: one ";
elif [[ $n -eq 2 ]]
then
	echo "$n in words is: two ";
elif [[ $n -eq 3 ]]
then
	echo "$n in words is: three ";
elif [[ $n -eq 4 ]]
then
	echo "$n in words is: four ";
elif [[ $n -eq 5 ]]
then
	echo "$n in words is: five ";
elif [[ $n -eq 6 ]]
then
	echo "$n in words is: six ";
elif [[ $n -eq 7 ]]
then
	echo "$n in words is: seven ";
elif [[ $n -eq 8 ]]
then
	echo "$n in words is: eight ";
else
	echo "$n in words is: nine ";
fi
