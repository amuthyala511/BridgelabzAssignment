#!/bin/bash -x
read -p "Enter first value " a;
read -p "Enter second value " b;
read -p "Enter third value " c;
declare -A dict;
dict[r1]=$(( $a + ($b * $c) ));
dict[r2]=$(( ($a * $b) + $c ));
dict[r3]=$(( $c + ($a / $b) ));
dict[r4]=$(( ($a % $b) + $c ));
arr=( ${dict[@]} );
echo "Array before sorting " ${arr[@]};
for(( i=0;i<${#arr[@]};i++ ))
do
	for(( j=0;j<${#arr[@]}-$i-1;j++ ))
	do
		if [[ ${arr[j]} -gt ${arr[$(($j+1))]} ]]
		then
			temp=${arr[j]};
			arr[$j]=${arr[$(($j+1))]};
			arr[$(($j+1))]=$temp;
		fi
	done
done
echo "Array in Ascending Order " ${arr[@]};
for(( i=${#arr[@]}-1;i>=0;i-- ))
do
	rev="$rev ${arr[i]}";
done
echo "Array in Descending Order " $rev;
