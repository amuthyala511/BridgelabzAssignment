#!/bin/bash -x
n1=$(( 100+RANDOM%900 ));
n2=$(( 100+RANDOM%900 ));
n3=$(( 100+RANDOM%900 ));
n4=$(( 100+RANDOM%900 ));
n5=$(( 100+RANDOM%900 ));
arr=( $n1 $n2 $n3 $n4 $n5 );
max=${arr[0]};
min=${arr[0]};
for i in "${arr[@]}"
do
	if [[ "$i" -gt "$max" ]]
	then
		max="$i";
	fi
done
for i in "${arr[@]}"
do
	if [[ "$i" -lt "$min" ]]
	then
		min="$i";
	fi
done
echo "Maximum is: " $max;
echo "Minimum is: " $min;

