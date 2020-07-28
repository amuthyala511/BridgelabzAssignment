#!/bin/bash -x
echo "enter a number";
read n;
if [[ $n -le 9 ]]
then
	choice=1;
elif [[ $n -ge 10 && $n -le 99 ]]
then
	choice=2;
elif [[ $n -ge 100 && $n -le 999 ]]
then
	choice=3;
elif [[ $n -ge 1000 && $n -le 9999 ]]
then
	choice=4;
fi
case $choice in
	1) placevalue=units;
	2) placevalue=tens;
	3) placevalue=hundreds;
	4) placevalue=thousands;
esac
echo $placevalue;

