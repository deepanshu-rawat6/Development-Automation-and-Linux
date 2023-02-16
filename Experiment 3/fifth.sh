#!/bin/zsh

echo "\nEnter the value of n: "
read n

fact=1
i=2

while [[ $i -le $n ]]; do
	fact=$((fact*i))
	((i++))
done

echo "\nThe factorial of $n : $fact"

