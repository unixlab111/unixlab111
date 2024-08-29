#!/bin/bash
echo "login id"
read opt
cd $HOME
ls >pattern.txt
grep "$opt" pattern.txt
if [ $? -eq 0 ]
then
echo "success"
else
echo "fail"
fi
