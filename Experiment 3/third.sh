#!/bin/zsh

for x in *; do
	if [[ -f $x ]]; then
		echo $x
	fi
done
