#!/bin/bash -x
read -p "Enter a number: " n
powers=1;
a=1;
for(( i=0;i<$n;i++ ))
do
	a=$(( $a*2 ))
	powers=$powers" "$a;
done
echo $powers;
