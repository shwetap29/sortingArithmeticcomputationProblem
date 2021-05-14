#!/bin/bash -x
#printing message
echo "Welcome to arithmetic computation problem"
declare -A Arithmetic
#taking input from the user
read -p "Enter number: " a
read -p "Enter number: " b
read -p "Enter number :" c
#performing arithmetic operation
operation1= echo "scale=4; $a + $b * $c"  #|bc -1`
Arithmetic[1]="$operation1"
operation2= echo "scale=4; $a * $b + $c"  #|bc -1`
Arithmetic[2]="$operation2"
operation3= echo "scale=4; $c + $a / $b"  #|bc -1`
Arithmetic[3]="$operation3"
operation4=`echo "scale=4; $a % $b + $c"  #|bc -l`
Arithmetic[4]="$operation4"

#printing output and message
echo "a+b*c = 1 : ${Arithmetic[1]}"
echo "a*b+c = 2 : ${Arithmetic[2]}"
echo "c+a/b = 3 : ${Arithmetic[3]}"
echo "a%b+c = 4 : ${Arithmetic[4]}"
