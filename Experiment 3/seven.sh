#!/bin/zsh

echo "Enter the value of N: "
read n
echo "Enter the value of K: "
read k

if [[ $k -gt $n ]]; then 
	echo "\nPlease re-enter the values"
	exit 1
elif [[ $k -eq 0 ]]; then
	echo "\n$n C $k : 1"
	exit 1
elif [[ $k -eq 1 ]]; then
	echo "\n$n C $k : $n"
	exit 1
fi

comb=1

for ((i=0; i<k; i++)); do
	comb=$((comb * (n-i) / (i + 1)))
done

echo "\n$n C $k : $comb"



