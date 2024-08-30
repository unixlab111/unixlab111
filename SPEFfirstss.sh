#!/bin/bash

echo -e "1.size\n2.permission\n3.existence of link\n4.filename"

echo "enter the file:"
read file

if [ ! -f $file ]
then

echo "file does not exist"
exit

fi

echo "enter the choice:"
read choice

case $choice in

1 ) ls -l $file | cut -d ' ' -f  5 ;;
2 ) ls -l $file | cut -d ' ' -f  1 ;;
3 ) ls -l $file | cut -d ' ' -f  2 ;;
4 ) ls -l $file | rev | cut -d ' ' -f 1 | rev ;;

* ) echo "invalid choice....";;

esac
