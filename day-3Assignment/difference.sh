#!/bin/bash -x
diff=`diff -iEZ original/original-file.sh updated/updated-file.sh`;
echo ${#diff};
if [ ${#diff} -gt 0 ]
then
	echo "Files are different";
	cp original/original-file.sh updated/updated-file.sh;
else
	echo "No differences";
fi
if
	[ -d 'original-backup' ]
then
	cp original/original-file.sh original-backup;
else
	mkdir original-backup;
	cp original/original-file.sh original-backup;
fi
difference=`diff -iEZ original-backup/original-file.sh updated/updated-file.sh`;
if [ ${#diff} == 0 ]
then
	echo "changes applied successfully and backup is created";
else
	echo "differences occur";
fi
