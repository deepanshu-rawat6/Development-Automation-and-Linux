#!/bin/zsh

echo "Enter the size of the array: "
read n

sum=0
c=1

while [[ $c -le $n ]]; do
	echo "Enter the value: "
	read val
	arr[$c]=$val
	sum=$((sum+val))
	((c++))
done

avg=$((sum/n))

echo "The average of the array is $avg"

echo "$arr"
