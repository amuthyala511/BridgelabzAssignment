#! /bin/bash
if [[ -v USERSECRET ]]
	then
		echo "already exists";
	else
		export USERSECRET=dH34xJaa23
		echo "variable value is assigned" $USERSECRET;
fi
