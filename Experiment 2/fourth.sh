#!/bin/zsh

echo "Enter the value of n:"
read n

sum=0
c=1

while [[ $c -le $n ]]; do
	sum=$((sum + c))
	((c++))
done

echo "Sum of first $n natural numbers is $sum"

avg=$((sum/n))
echo "Average of first $n natural numbers is $avg"
