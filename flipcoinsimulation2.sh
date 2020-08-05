#!/bin/bash -x
echo "flip coin simulation"
H=0
T=0
i=0
declare -A dict
while [[ $H -lt 50 || $T -lt 50 ]]
do
   randomCheck=$((RANDOM%2))
   if [ $randomCheck -eq 1 ]
   then
      ((H++))
   dict[ "$i" ]="H"
   else
      ((T++))
      dict[ "$i" ]="T"
   fi
((i++))
done
totalNumberOfFliping=$i
echo "totalNumberOfFlipingCoin: $totalNumberOfFliping Heads:$H Tails:$T "
HeadsPercentage=$((($H*100)/$totalNumberOfFliping))
echo "HeadsPercentage:$HeadsPercentage"
TailsPercentage=$((($T*100)/$totalNumberOfFliping))
echo "TailsPercentage:$TailsPercentage"
