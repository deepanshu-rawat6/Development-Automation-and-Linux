#!/bin/zsh

for file in *; do
	if [[ -f $file ]]; then
		if [[ -r $file && -w $file && -x $file ]]; then 
			ls -l $file
		fi
	fi
done
