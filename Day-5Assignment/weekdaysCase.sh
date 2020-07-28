#!/bin/bash -x
echo "enter a number";
read n;
case $n in
	1) day=Sunday ;;
	2) day=Monday ;;
	3) day=Tuesday ;;
	4) day=Wednesday ;;
	5) day=Thursday ;;
	6) day=Friday ;;
	7) day=Saturday ;;
	*) day=notvalid ;;
esac
echo $day;
