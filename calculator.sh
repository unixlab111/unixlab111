#!/bin/bash
echo "1.Addition 2.Subtraction 3.Multiplication 4.Division 5.Modulo division"
echo "Enter your choice"
read choice
echo "enter two values"
read r1
read r2
case $choice in
        1) echo `expr $r1 + $r2`;;
        2) echo `expr $r1 - $r2`;;
        3) echo `expr $r1 \* $r2`;;
        4) echo `expr $r1 / $r2`;;
        5) echo `expr $r1 % $r2`;;
        *) echo "invalid input";;
esac
