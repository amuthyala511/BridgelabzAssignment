#!/bin/bash -x
shopt -s extglob
echo "Enter your First Name";
read FN;
echo "Enter your Last Name";
read LN;
echo "Enter your email address";
read mail;
echo "Enter your mobile number";
read phno;
echo "Enter your password";
read pswd;

#for UC-1,2
FirstName="^[A-Z]{1}[a-zA-Z]{2,}$"
LastName="^[A-Z]{1}[a-zA-Z]{2,}$"

#for UC-3
id="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$"

#for UC-4
mobile="^(91){1}[ ][6-9]{1}[0-9]{9,9}$"

if [[ $FN =~ $FirstName ]]
then
	echo "valid"
else
	echo "Invalid"
fi
if [[ $LN =~ $LastName ]]
then
	echo "valid"
else
	echo "Not Valid"
fi
if [[ $mail =~ $id ]]
then
	echo "yes"
else
	echo "no"
fi
if [[ $phno =~ $mobile ]]
then
	echo "correct"
else
	echo "wrong"
fi

#for UC-5to8
password="^[a-zA-Z0-9]+(@[@._+$#-])[a-zA-Z0-9]+{8,}$"
if [[ $pswd =~ $password ]]
then
	echo "valid"
else
	echo "Invalid, try again!"
fi
