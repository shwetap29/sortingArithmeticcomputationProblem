#!/bin/bash -x

#printing message
echo "Welcome to arithmetic computation problem"
#taking input from the user
read -p "Enter number: " a
read -p "Enter number: " b
read -p "Enter number :" c
#performing arithmetic operation
operation1= echo "scale=4; $a + $b * $c"  #|bc -1`
operation2= echo "scale=4; $a * $b + $c"  #|bc -1`
operation3= echo "scale=4; $c + $a / $b"  #|bc -1`
operation4=`echo "scale=4; $a % $b + $c"  #|bc -l`

#printing output and message
echo "a+b*c = $operation1"
echo "a*b+c = $operation2"
echo "c+a/b = $operation3"
echo "a%b+c = $operation4"
