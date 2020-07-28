#!/bin/bash -x
isHead=0;
isTail=1;
heads=0;
tails=0;
while [[ $heads -lt 21 && $tails -lt 21 ]]
do
	toss=$(( $RANDOM%2 ));
	case $toss in
			$isHead) heads=$(( $heads+1 )) ;;
			$isTail) tails=$(( $tails+1 )) ;;
	esac
done
echo "Heads count is " $heads;
echo "Tails count is " $tails;
if [[ $heads -gt $tails ]]
then
	count=$(( $heads-$tails ));
	echo "Heads won by " $count;
elif [[ $heads -lt $tails ]]
then
	count=$(( $tails-$heads ));
	echo "Tails won by " $count;
elif [[ $heads -eq $tails ]]
then
	echo "It's a Tie";
	while [[ ($(( $heads-$tails )) -lt 2) || ($(( $tails-$heads )) -lt 2) ]]
	do
		toss=$(( $RANDOM%2 ));
		case $toss in
				$isHead) heads=$(( $heads+1 )) ;;
				$isTail) tails=$(( $tails+1 )) ;;
		esac
	done
	echo $heads;
	echo $tails;
fi

