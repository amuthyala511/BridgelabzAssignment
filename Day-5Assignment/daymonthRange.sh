#!/bin/bash -x
read -p "enter day" day;
read -p "enter month" month;
if [[ ( day -ge 20 && day -le 31 && month -ge 3 && month -le 5 ) || ( day -ge 1 && day -le 20 && month -ge 4 && month -le 6 ) ]]
then
	echo "True";
else
	echo "False";
fi
