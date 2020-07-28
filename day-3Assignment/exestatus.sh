#!/bin/bash -x
hello
var=$?;
if [ $var -eq 0 ]
then
	echo "executed command successfully";
	exit 0;
else
	echo "invalid command";
	echo "return value" $var;
	exit 1;
fi
