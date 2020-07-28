#!/bin/bash -x
read -p "Enter a number " n;
rev=0;
function isPalindrome()
{
	while [[ $n -gt 0 ]]
	do
		rem=$(( $n%10 ));
		rev=$(( ($rev*10)+$rem ));
		n=$(( $n/10 ));
	done
	echo $rev;
}
rev=$( isPalindrome $n );
if [[ $n -eq $rev ]]
then
	echo "Number is a palindrome";
else
	echo "Not a palindrome";
fi
