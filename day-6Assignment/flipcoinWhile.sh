#!/bin/bash -x
isHead=1;
isTail=0;
heads=0;
tails=0;
while [[ $heads -lt 11 && $tails -lt 11 ]]
do
	toss=$(( $RANDOM%2 ));
	case $toss in
		$isHead) heads=$(( $heads+1 )) ;;
		$isTail) tails=$(( $tails+1 )) ;;
	esac
done
echo "Heads count is" $heads;
echo "Tails count is" $tails;
