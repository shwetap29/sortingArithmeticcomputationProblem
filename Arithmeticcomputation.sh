#printing message
echo "Welcome to arithmetic computation problem"
#taking input from the user
read -p "Enter number: " a
read -p "Enter number: " b
read -p "Enter number :" c
#performing arithmetic operation
operation1=`echo "scale=4; $a + $b * $c"   #|bc -1`
operation2=`echo "scale=4; $a * $b + $c"   #|bc -1`

echo "a+b*c = $operation1"
echo "a*b+c = #operation2"
