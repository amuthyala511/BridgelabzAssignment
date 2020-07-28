#!/bin/bash -x
r1=$(( 1+ RANDOM%6 ))
r2=$(( 1+ RANDOM%6 ))
res=$(( $r1 + $r2 ))
echo $res
