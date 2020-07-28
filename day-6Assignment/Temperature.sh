#!/bin/bash -x
read -p "enter temperature in celsius: " degC;
read -p "enter temperature in fahrenheit: " degF;
function TempConv()
{
	local tempCheck=$@;
	case $tempCheck in
		1 )
					if [[ $degC -ge 0 && $degC -le 100 ]]
					then
						cal=`echo $degC 1.8 | awk '{ print $1*$2 }'`;
						res=`echo $cal 32 | awk '{ print $1+$2 }'`;
					else
						echo "Invalid input, try again!";
					fi
				;;
		 2 )
					if [[ $degF -ge 32 && $degF -le 212 ]]
					then
						cal=$(( $degF-32 ));
						res=`echo $cal 0.55 | awk '{ print $1*$2 }'`;
					else
						echo "Invalid input, try again!";
					fi
				;;
	esac
echo $res;
}
tempCheck=$(( $RANDOM%2 ));
$( TempConv $tempCheck );
