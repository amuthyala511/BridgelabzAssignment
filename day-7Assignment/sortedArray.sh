#!/bin/bash -x
count=0;
while [[ $count -lt 10 ]]
do
	num[$count]=$(( RANDOM%900+100 ));
	((count++));
done
echo "Array before sorting: "${num[@]};
for(( i=0;i<${#num[@]};i++ ))
do
	for(( j=0;j<(${#num[@]}-$i-1);j++ ))
	do
		if [[ ${num[j]} -gt ${num[$((j+1))]} ]]
		then
			temp=${num[j]};
			num[$j]=${num[$((j+1))]};
			num[$((j+1))]=$temp;
		fi
	done
done
echo "Array after sorting: "${num[@]};
SecondLargest=$(printf '%s\n' "${num[@]}" | sort -n | tail -2 | head -1);
SecondSmallest=$(printf '%s\n' "${num[@]}" | sort -n | head -2 | tail -1);
echo $SecondLargest;
echo $SecondSmallest;
