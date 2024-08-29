#!/bin/bash
echo "enter the units consumed:"
read units
if [ $units -le 200 ]
then
perc=0.8
amt=$(echo "$units * $perc" | bc)
elif [ $units -gt 200 ] && [ $units -le 300 ]
then
excessunit=$(echo "$units - 200"|bc)
baseamt=$(echo "200*0.8" |bc)
excessamt=$(echo "$excessunit*0.9"|bc)
amt=$(echo "$baseamt+$excessamt"|bc)
else
excessunit=$(echo "$units - 300"|bc)
baseamt=$(echo "200*0.8" |bc)
midamt=$(echo "100*0.9"|bc)
excessamt=$(echo "$excessunit"|bc)
amt=$(echo "$baseamt+$midamt+$excessamt"|bc)
fi
amt=$(echo "$amt+100" |bc)
if [ $( echo "$amt >400" |bc) -eq 1 ]
then
sur=$(echo "$amt*15/100" |bc)
amt=$(echo "$amt+$sur" |bc)
fi
echo "total amount :$amt"
