#!/bin/bash 
echo "flip coin simulation"
HH=0
HT=0
TH=0
TT=0
j=0
double=0
declare -A dict1
while [ $double -lt 200 ]
do
   randomCheck=$((RANDOM%4))
   if [ $randomCheck -eq 0 ]
   then
      ((HH++))
   dict1[ "$j" ]="HH"
   elif [ $randomCheck -eq 1 ]
	then
      ((HT++))
      dict1[ "$j" ]="HT"
	elif [ $randomCheck -eq 2 ]
	then
		((TH++))
		 dict1[ "$j" ]="HT"
	else
		((TT++))
		 dict1[ "$j" ]="TT"
   fi
((j++))
((double++))
done

totalNumberOfFliping2=$j
echo "totalNumberOfFlipingCoin: $totalNumberOfFliping2 HH:$HH HT:$HT TH:$TH TT:$TT "
HHPercentage=$((($HH*100)/$totalNumberOfFliping2))
echo "HHPercentage:$HHPercentage"
HTPercentage=$((($HT*100)/$totalNumberOfFliping2))
echo "HTPercentage:$HTPercentage"
THPercentage=$((($TH*100)/$totalNumberOfFliping2))
echo "THPercentage:$THPercentage"
TTPercentage=$((($TT*100)/$totalNumberOfFliping2))
echo "TTPercentage:$TTPercentage"
echo "${dict1[@]}"
