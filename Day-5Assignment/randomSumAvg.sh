#!/bin/bash -x
n1=$(( 10+ RANDOM%90 ))
n2=$(( 10+ RANDOM%90 ))
n3=$(( 10+ RANDOM%90 ))
n4=$(( 10+ RANDOM%90 ))
n5=$(( 10+ RANDOM%90 ))
sum=$(( $n1 + $n2 + $n3 + $n4 + $n5 ))
avg=$(( $sum/5 ))
echo `awk 'BEGIN {print ($sum)/5}'`
