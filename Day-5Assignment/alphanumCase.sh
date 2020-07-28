#!/bin/bash -x
echo "enter a number";
read n;
case $n in
	0) word=Zero ;;
	1) word=One ;;
	2) word=Two ;;
	3) word=Three ;;
	4) word=Four ;;
	5) word=Five ;;
	6) word=Six ;;
	7) word=Seven ;;
	8) word=Eight ;;
	9) word=Nine ;;
esac
echo $word;
