#!/bin/bash -x
read -p "Enter a number:" n;
start=1;
end=100;
while [ $start -le $end ]
do
	mid=$(( ($start+$end)/2 ));
	if [[ $n -gt $mid ]]
	then
		start=$mid;
	else
		end=$mid;
	fi
done
echo $mid;
