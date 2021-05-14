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
operation4=`echo "scale=4; $a % $b + $c"  #|bc -1`
Arithmetic[4]="$operation4"
#storing dictionary value into array
for iterator in ${!Arithmetic[@]}
do
     array[$iterator]="${Arithmetic[$iterator]}"
done
#printing array value
echo "Array value is : ${array[@]}"


