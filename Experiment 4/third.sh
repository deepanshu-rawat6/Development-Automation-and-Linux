#!/bin/zsh

function factorial() {
	N=$1
	i=1
	fact=1
	while [[ $i -le $N ]]; do
		fact=$(($fact * $i ))
		i=$(($i + 1))
	done

	echo "\nThe factorial of $N: $fact"
}

factorial "$1"
