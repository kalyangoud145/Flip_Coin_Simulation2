#!/bin/bash -x
echo "flip coin simulation"
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
