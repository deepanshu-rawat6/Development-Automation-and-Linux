#!/bin/zsh

directory = "/var/log"

usage = $(df -h $directory | awk 'NR==2 { print $5}')

echo "Disk usage for $directory: $usage used"

threshold = 10%

if ((usage <= threshold))
then
	echo "Disk usage is more than threshold"
else 
	echo "Disk usage is just normal"
fi
