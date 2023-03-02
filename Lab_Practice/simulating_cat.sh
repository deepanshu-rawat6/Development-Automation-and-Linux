#!/bin/zsh

file_name=$1

while read line 
do
	echo $line
done < $file_name
