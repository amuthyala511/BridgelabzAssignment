#!/bin/bash -x
triplet="Triplets are";
arr=( 1 3 -4 0 2 -1 -5 7 -2 5 );
for(( i=0;i<${#arr[@]}-2;i++ ))
do
	for(( j=$i+1;j<${#arr[@]}-1;j++ ))
	do
		for(( k=$j+1;k<${#arr[@]};k++ ))
		do
			if [[ ${arr[i]}+${arr[j]}+${arr[k]} -eq 0 ]]
			then
				triplet=$triplet'\n'${arr[i]}" "${arr[j]}" "${arr[k]};
			fi
		done
	done
done
echo | sed "i$triplet";
