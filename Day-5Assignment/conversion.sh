#!/bin/bash -x
l=60;
b=40;
m=3.28;
read n;
r1=$(( $n/12 ));
	echo "$n inches is equal to $r1 feet";
r2=`echo $l $b 3.28 3.28 | awk '{ print $1*$2*$3*$4 }'`;
	echo "rectangular plot is $r2 metres";
r3=`echo $r2 25 4047 | awk '{ print $1*$2/$3 }'`;
	echo "area of 25 plots is $r3";
