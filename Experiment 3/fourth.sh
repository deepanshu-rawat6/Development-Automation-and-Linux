#!/bin/zsh

if [[ $# -ne 1 ]]; then 
	echo "Error: 1 argument expected"
	exit 1
fi

path=$1

if [[ -d $path ]]; then
	echo "$path is a directory"
elif [[ -f $path ]]; then 
	echo "$path is a file"
else 
	echo "$path is something else"
fi
