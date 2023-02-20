#!/bin/zsh

even_or_odd() {
	echo "\nEnter a three-digit number: "
	read num
	if (( $num & 1 == 0 )); then
		echo "\n$num is even!"
		local temp=$num
		sum=0
		while [[ $temp -ne 0 ]]; do
			local r=$(( $temp % 10 ))
			sum=$(( $sum + $r ))
			temp=$(( $temp / 10 ))
		done
		echo "The sum of the digits of $num: $sum"
	else
		echo "\n$num is odd!"
		local temp=$num
		prod=1
		while [[  $temp -ne 0 ]]; do
			local r=$(( $temp % 10 ))
			prod=$(( $prod * $r ))
			temp=$(( $temp / 10 ))
		done
		echo "The product of the digits of $num: $prod"
	fi
}

even_or_odd
