#!/bin/bash

# Q1: Check if a number is even or odd
echo "Q1) Enter a number to check EVEN or ODD:"
read num
if (( num % 2 == 0 )); then
    echo "$num is EVEN"
else
    echo "$num is ODD"
fi

# Q2: Check if a year is a leap year or not
echo "Q2) Enter a year:"
read year
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a LEAP YEAR"
else
    echo "$year is NOT a LEAP YEAR"
fi

# Q3: Find factorial of a number
echo "Q3) Enter a number to find its factorial:"
read fact
factorial=1
for (( i=1; i<=fact; i++ ))
do
  factorial=$((factorial * i))
done
echo "Factorial of $fact is $factorial"

# Q4: Swap two integers
echo "Q4) Enter two numbers to swap:"
read a
read b
echo "Before Swapping: a = $a, b = $b"
temp=$a
a=$b
b=$temp
echo "After Swapping: a = $a, b = $b"

# Q5: Compute GCD & LCM of two numbers
echo "Q5) Enter two numbers to compute GCD and LCM:"
read x
read y
a=$x
b=$y
# GCD using Euclidean algorithm
while [ $b -ne 0 ]
do
    temp=$b
    b=$((a % b))
    a=$temp
done
gcd=$a
lcm=$(( (x * y) / gcd ))
echo "GCD of $x and $y is: $gcd"
echo "LCM of $x and $y is: $lcm"

