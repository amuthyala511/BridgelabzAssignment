#! /bin/sh
current_date=$(date +%d%m%y)
echo "current date : $current_date"
for files in `ls *.log.1`;
do
	basename=`echo $files | awk -F. '{print $1}'`;
	echo "basename : $basename"
	extension=`echo $files | awk -F. '{print $2}'`;
	echo "extension : $extension"
	mv "$files" "$basename"-"$current_date.$extension";
done
