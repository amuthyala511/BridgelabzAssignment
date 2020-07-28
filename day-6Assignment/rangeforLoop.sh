#!/bin/bash -x
read -p "Enter the range " m n;
echo "Prime numbers between $m and $n are: "
for(( i=$m;i<=$n;i++ ))
do
	for(( j=2;j<$i;j++ ))
	do
		if [[ $(( $i%$j )) -eq 0 ]]
		then
			count=$(( $count+1 ));
		else
			count=$count;
		fi
	done
	if [[ $count -eq 0 ]]
	then
		echo $i;
	fi
	count=0;
done

