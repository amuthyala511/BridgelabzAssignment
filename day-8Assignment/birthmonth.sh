#!/bin/bash -x
declare -A month;
a=1;
for(( i=1;i<=50;i++ ))
do
	random=$(( RANDOM%12+1 ))
	case $random in
	1) month[$i]="January"
		jan[a++]=$i
		;;
	2) month[$i]="February"
		feb[a++]=$i
		;;
	3)	month[$i]="March"
		mar[a++]=$i
		;;
	4) month[$i]="April"
		apr[a++]=$i
		;;
	5) month[$i]="May"
		may[a++]=$i
		;;
	6) month[$i]="June"
		june[a++]=$i
		;;
	7) month[$i]="July"
		july[a++]=$i
		;;
	8) month[$i]="August"
		aug[a++]=$i
		;;
	9) month[$i]="September"
		sept[a++]=$i
		;;
	10) month[$i]="October"
		oct[a++]=$i
		;;
	11) month[$i]="November"
		nov[a++]=$i
		;;
	12) month[$i]="December"
		dec[a++]=$i
		;;
	esac
done
echo ${month[@]};
echo "names of persons born in January " ${jan[@]};
echo "names of persons born in February " ${feb[@]};
echo "names of persons born in March " ${mar[@]};
echo "names of persons born in April " ${apr[@]};
echo "names of persons born in May " ${may[@]};
echo "names of persons born in June " ${june[@]};
echo "names of persons born in July " ${july[@]};
echo "names of persons born in August " ${aug[@]};
echo "names of persons born in September " ${sept[@]};
echo "names of persons born in October " ${oct[@]};
echo "names of persons born in November " ${nov[@]};
echo "names of persons born in December " ${dec[@]};
