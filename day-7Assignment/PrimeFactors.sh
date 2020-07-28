#!/bin/bash -x
count=0;
read -p "Enter a number to find its prime factors: " n;
for(( i=2;i<$n;i++ ))
do
   if [[ $n%$i -eq 0 ]]
   then
      flag=1;
      for(( j=2;j<=$(( $i/2 ));j++ ))
      do
         if [[ $i%$j -eq 0 ]]
         then
            flag=0;
         fi
      done
      if [[ $flag -eq 1 ]]
      then
         arr[count++]=$i;
      fi
   fi
done
echo ${arr[@]};
