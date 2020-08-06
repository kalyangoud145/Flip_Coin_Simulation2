#!/bin/bash 
echo "flip coin simulation"
#Singlet combination
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
echo "${dict[@]}"
#Doublet combination
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

#Triplet combination
HHH=0
HHT=0
HTH=0
THH=0
HTT=0
THT=0
TTH=0
TTT=0
k=0
third=0
declare -A dict2
while [ $third -lt 200 ]
do
   randomCheck=$((RANDOM%8))
   if [ $randomCheck -eq 0 ]
   then
      ((HHH++))
   	dict2[ "$k" ]="HHH"
   elif [ $randomCheck -eq 1 ]
   then
      ((HHT++))
      dict2[ "$k" ]="HHT"
   elif [ $randomCheck -eq 2 ]
   then
      ((HTH++))
       dict2[ "$k" ]="HTH"
   elif [ $randomCheck -eq 3 ]
	then
      ((THH++))
       dict2[ "$k" ]="THH"
	elif [ $randomCheck -eq 4 ]
   then
      ((HTT++))
       dict2[ "$k" ]="HHT"
	elif [ $randomCheck -eq 5 ]
   then
      ((THT++))
       dict2[ "$k" ]="THT"
	elif [ $randomCheck -eq 6 ]
   then
      ((TTH++))
       dict2[ "$k" ]="TTH"
	else
		((TTT++))
	 dict2[ "$k" ]="TTT"
   fi
((k++))
((third++))
done
totalNumberOfFliping3=${#dict2[@]}
echo "totalNumberOfFlipingCoin: $totalNumberOfFliping3 HHH:$HHH HHT:$HHT HTH:$HTH THH:$THH HTT:$HTT THT:$THT TTH:$TTH TTT:$TTT "
HHHPercentage=$((($HHH*100)/$totalNumberOfFliping3))
echo "HHHPercentage:$HHHPercentage"
HHTPercentage=$((($HHT*100)/$totalNumberOfFliping3))
echo "HHTPercentage:$HHTPercentage"
HTHPercentage=$((($HTH*100)/$totalNumberOfFliping3))
echo "HTHPercentage:$HTHPercentage"
THHPercentage=$((($THH*100)/$totalNumberOfFliping3))
echo "THHPercentage:$THHPercentage"
HTTPercentage=$((($HTT*100)/$totalNumberOfFliping3))
echo "HTTPercentage:$HTTPercentage"
THTPercentage=$((($THT*100)/$totalNumberOfFliping3))
echo "THTPercentage:$THTPercentage"
THTPercentage=$((($THT*100)/$totalNumberOfFliping3))
echo "THTPercentage:$THTPercentage"
TTHPercentage=$((($TTH*100)/$totalNumberOfFliping3))
echo "TTHPercentage:$TTHPercentage"
TTTPercentage=$((($TTT*100)/$totalNumberOfFliping3))
echo "TTTPercentage:$TTTPercentage"
echo "${dict2[@]}"
