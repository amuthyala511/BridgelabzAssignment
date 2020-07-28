#!/bin/bash -x
read -p "Enter a number: " n;
temp=$n;
rev=0;
function PrimePalindrome()
{
	for(( i=2;i<=$temp;i++ ))
	do
		if [[ $temp%$i -eq 0 ]]
		then
			count=1;
		else
			count=0;
		fi
	done
	while [[ $n -gt 0 ]]
	do
		rem=$(( $n%10 ));
		rev=$(( ($rev*10)+$rem ));
		n=$(( $n/10 ));
	done
	echo $rev;
}
rev=$( PrimePalindrome $n );
if [[ $temp -eq $rev && $count -eq 0 ]]
then
	echo "$n is a Prime Palindrome";
else
	echo "$n is not a Prime Palindrome";
fi
