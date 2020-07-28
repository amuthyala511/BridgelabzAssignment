#!/bin/bash -x
a=100;
NO_OF_WINS=0;
NO_OF_BETS=0;
while [[ $a -gt 0 && $a -lt 200 ]]
do
	randomcheck=$(( $RANDOM%2 ));
	if [[ $randomcheck -eq 1 ]]
	then
		NO_OF_WINS=$(( $NO_OF_WINS+1 ));
		a=$(( $a+1 ));
	else
		a=$(( $a-1 ));
	fi
((NO_OF_BETS++));
done
echo $NO_OF_WINS;
echo $NO_OF_BETS;
