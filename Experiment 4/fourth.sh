#!/bin/zsh

function read_from_start_or_end() {
	file_name=$1
	lines=$2
	mode=$3
	if [ "$mode" = "start" ]; then
		echo "\nOutput:\n"
		head -n "$lines" "$file_name"
	elif [ "$mode" = "end" ]; then
		echo "\nOutput:\n"
		tail -n "$(($lines+1))" "$file_name"
	else 
		echo "Please enter a valid mode, either 'start' or 'end'"
	fi
}

echo "\nEnter the file name:"
read filename

echo "\nEnter the number of lines:"
read line

echo "\nEnter the mode,either 'start' or 'end':"
read modes


read_from_start_or_end "$filename" "$line" "$modes"

