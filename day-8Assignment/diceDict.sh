#!/bin/bash -x
count=55;
declare -A dice;
dice[num1]="0";
dice[num2]="0";
dice[num3]="0";
dice[num4]="0";
dice[num5]="0";
dice[num6]="0";
for(( i=0;i<$count;i++ ))
do
rolldice=$(( RANDOM%6+1 ));
if [[ $rolldice -eq 1 ]]
then
	dice[num1]=$(( ${dice[num1]}+1 ));
elif [[ $rolldice -eq 2 ]]
then
	dice[num2]=$(( ${dice[num2]}+1 ));
elif [[ $rolldice -eq 3 ]]
then
	dice[num3]=$(( ${dice[num3]}+1 ));
elif [[ $rolldice -eq 4 ]]
then
	dice[num4]=$(( ${dice[num4]}+1 ));
elif [[ $rolldice -eq 5 ]]
then
	dice[num5]=$(( ${dice[num5]}+1 ));
else
	dice[num6]=$(( ${dice[num6]}+1 ));
fi
done
echo ${dice[@]};
max=${dice[num1]};
min=${dice[num1]};
for i in ${dice[@]}
do
	if [[ $i -gt $max ]]
	then
		max=$i;
	fi
done
for i in ${dice[@]}
do
	if [[ $i -lt $min ]]
	then
		min=$i;
	fi
done
echo $max;
echo $min;
