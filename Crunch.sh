#!/bin/bash
P=$(cat /password.txt)
N=$(echo 123456789)
crunch 1 3 $N -o t1.txt
NUMBERS=$(cat t1.txt)
for i in $P;
do
	for e in $NUMBERS;
	do
		echo $i$e >> password.txt
	done
done

