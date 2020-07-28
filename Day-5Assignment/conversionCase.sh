#!/bin/bash -x
read -p "Enter the value in feets: " feet;
read -p "Enter the value in inches: " inch;
read -p "Enter the value in meters: " meter;
r1=$(( $feet*12 ));
	echo "$feet feets is equal to $r1 inches";
r2=`echo $feet 0.3048 | awk '{ print $1*$2 }'`;
	echo "$feet feets is equal to $r2 metres";
r3=$(( $inch/12 ));
	echo "$inch inches is equal to $r3 feet";
r4=`echo $meter 3.28 | awk '{ print $1*$2 }'`;
	echo "$meter meters is equal to $r4 feet";
