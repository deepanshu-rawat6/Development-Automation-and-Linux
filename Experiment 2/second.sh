#!/bin/zsh

echo "Enter mark: "
read mark

if [[ $mark -gt 80 ]]; then
	echo "Distinction"
elif [[ $mark -ge 60 && $mark -le 80 ]]; then
	echo "First Division"
elif [[ $mark -ge 35 && $mark -lt 60 ]]; then 
	echo "Pass"
else 
	echo "Fail"
fi
