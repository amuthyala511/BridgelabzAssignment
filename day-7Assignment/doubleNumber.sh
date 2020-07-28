#!/bin/bash -x
count=0;
flag=0;
read -p "Enter the range of numbers: " start end;
for(( i=$start;i<=($end);i++ ))
do
	if [[ $i%11 -eq 0 && $i -ne 0 ]]
	then
		flag=1;
	else
		flag=0;
	fi
	if [[ $flag -eq 1 ]]
	then
		arr[count++]=$i;
	fi
done
echo ${arr[@]};
