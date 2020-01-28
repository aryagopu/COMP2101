##!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
read -p "Please enter the first number : " firstnum
read -p "Please enter the second number : " secondnum
read -p "Please enter the thrid number : " thirdnum

#secondnum=2
sum=$((firstnum + secondnum + thirdnum))
multiply=$((firstnum * secondnum  * thirdnum))

fpmultiply=$(awk "BEGIN{printf \"*.2f\", $firstnum*$secondnum}")

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum multiped by $secondnum multiped by $thirdnum is $multiply
  - More precisely, multiped value is $multiply
EOF
