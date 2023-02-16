#!/bin/zsh

echo "\nEnter the value of N: "
read n

a=0
b=1
i=2

echo "\nThe Fibonacci series upto $n terms:"

echo "$a"
echo "$b"

while [[ $i -le $n ]]; do
	sum=$((a+b))
	echo "$sum"
	a=$((b))
	b=$((sum))
	((i++))
done

