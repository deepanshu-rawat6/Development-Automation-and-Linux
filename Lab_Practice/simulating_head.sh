#!/bin/zsh

lines=$1
file_name=$2

c=0

while read file
do 
	((c++))
	echo $file
	if [[ $c -ge $lines ]]; 
	then
		exit 1
	fi
done < $file_name
