#!/bin/bash
while read line
do
echo $line>temp
v=$(cut -d ' ' -f 3 temp)
emp=$(cut -d ' ' -f 2 temp)
echo $v
if echo $v | egrep -q '^[0-9]+$'
then
if [ $v -gt 6000 ]
then
da=$(( v * 25/100 ))
else
da=$(( v * 30/100 ))
fi
hra=$(( v * 10/100))
gs=$(( v+da+hra))
echo "$line"
echo "employee:$emp"
echo "basic:$v"
echo "da:$da"
echo "HRA:$hra"
echo "gs:$gs\n"
fi
done <empn.lst
