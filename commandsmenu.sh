#!/bin/bash
echo "1.who 2.date 3.whoami 4.ls-l 5.exit"
while true
do
echo "enter choice"
read opt
case $opt in
1)who;;
2)date;;
3)whoami;;
4)ls -l;;
5)exit;;
*)echo "invalid"
esac
done
