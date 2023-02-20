#!/bin/zsh

addNum() {
	sum=$(($1 + $2))
	echo "\nThe sum of $1 and $2: $sum"
}

addNum $1 $2
