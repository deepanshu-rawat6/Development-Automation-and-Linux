#!/bin/zsh

if [[ $# -ne 1 ]]; then
	echo "Error: 1 argument expected"
	exit 1
fi

file=$1

if [[ ! -f $file ]]; then
	echo "Error: $file is not a regular file"
	exit 1
fi

count=$(grep -o "the" $file | wc -w)

echo "Total instances of 'the' in $file: $count"

