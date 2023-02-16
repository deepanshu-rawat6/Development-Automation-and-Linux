#!/bin/zsh

while true
do
	echo "\nEnter 1 for Addition(+),Enter 2 for Subtraction(-),Enter 3 for Multiplication(*),Enter 4 for Division(/) and Enter 5 to exit"
	read choice
	if [[ $choice -eq 5 ]] ; then
		echo "\nExiting.."
		sleep 2
		echo "Almost there.."
		sleep 1
		exit 1
	fi
	echo "\nEnter number 1: "
	read num1
	echo "\nEnter number 2: "
	read num2
	case $choice in
		"1")
			var=$((num1+num2))
			echo "\nAdditon of $num1 and $num2: $var"
			;;
		"2")
			var=$((num1-num2))
			echo "\nSubtraction of $num2 from $num1: $var"
			;;
		"3")
			var=$((num1*num2))
			echo "\nMultiplication of $num1 and $num2: $var"
			;;
		"4")
			var=$((num1/num2))
			echo "\nDivision of $num2 from $num1: $var" 
			;;
		*)
			echo "\nInvalid Operation"
			;;
	esac
done

