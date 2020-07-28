#!/bin/bash -x
for files in `ls *.txt`;
do
	foldername=`echo $files | awk -F. ' {print $1} '`;
	echo creating folder by the name of $foldername;
	mkdir $foldername;
	echo folder is created;
	echo moving $files to folder $foldername;
	mv $files $foldername;
	echo files moved;
done
