#! /bin/bash -x
foldername=`echo "demofolder"`;
for files in `ls -d */`;
do
	if [ -d $foldername ];
	then
		echo "folder already exists";
	else
		mkdir $foldername;
		break;
	fi
done
