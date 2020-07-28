#!/bin/bash -x
read n;
h=1;
for(( i=2;i<=$n;i++ ))
do
	x="1/"$i;
	h=$h+$x;
done
echo $h;
