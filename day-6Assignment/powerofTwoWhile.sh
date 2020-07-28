#!/bin/bash -x
read n;
i=0;
powers=0;
while [ $n -ge 0 ]
do
	if [[	$(( 2**$i )) -le 256 ]]
	then
		powers=$powers" "$(( 2**$i ));
	else
		break;
	fi
	((i++));
	((n--));
done
echo $powers;

