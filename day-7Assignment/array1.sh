#!/bin/bash -x
count=0;
while [[ $count -lt 10 ]]
do
	num[$count]=$(( RANDOM%900+100 ))
	((count++))
done
echo ${num[@]};
largest=${num[0]};
secondlarge=0;
smallest=${num[0]};
secondsmall=0;
for(( i=0;i<${#num[@]};i++ ))
do
	if [[ ${num[i]} -gt $largest ]]
	then
		secondlarge=$(( $largest ));
		largest=$(( ${num[i]} ));
	elif [[ $secondlarge -lt ${num[i]} ]]
	then
		secondlarge=$(( ${num[i]} ));
	fi
done
for(( i=0;i<${#num[@]};i++ ))
do
	if [[ ${num[i]} -lt $smallest ]]
	then
		secondsmall=$(( $smallest ));
		smallest=$(( ${num[i]} ));
	elif [[ ${num[i]} -ge $smallest && ${num[i]} -lt $secondsmall ]]
	then
		secondsmall=$(( ${num[i]} ));
	fi
done
echo "second largest value is: " $secondlarge;
echo "second smallest value is: " $secondsmall;
