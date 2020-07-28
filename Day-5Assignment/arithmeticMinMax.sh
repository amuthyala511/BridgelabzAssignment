#!/bin/bash -x
a=10;
b=2;
c=3;
r1=$(( $a + ($b * $c) ));
r2=$(( ($a % $b) + $c ));
r3=$(( $c + ($a / $b) ));
r4=$(( ($a * $b) + $c ));
arr=( $r1 $r2 $r3 $r4);
min=${arr[0]};
max=${arr[0]};
for i in "${arr[@]}"
do
	if [[ "$i" -lt "$min" ]]
	then
		min="$i";
	fi
done
for i in "${arr[@]}"
do
	if [[ "$i" -gt "$max" ]]
	then
		max="$i";
	fi
done
echo "Minimum is: $min";
echo "Maximum is: $max";
