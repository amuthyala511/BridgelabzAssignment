#!/bin/bash -x
for files in `find . -type f -mtime +7`;
do
	echo "creating a backup folder to move modified files";
	mkdir backupfolder;
	mv $files backupfolder;
	echo "files moved";
done
