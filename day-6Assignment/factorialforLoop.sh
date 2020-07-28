#!/bin/bash -x
read n;
f=1;
for(( i=2;i<=$n;i++ ))
do
	a=$i;
	f=$f*$a;
done
echo $f;
