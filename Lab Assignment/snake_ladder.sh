#!/bin/zsh

i=1
sum=0

while [[ $i -le 100 ]]
do
	# Let suppose the  board size is 10x10
	N=10

	# set up the snake and ladder positions, one snake and one ladder
	snakes_ladders[14]=5
	snakes_ladders[19]=70
	snakes_ladders[38]=10
	snakes_ladders[41]=99
	snakes_ladders[54]=36
	snakes_ladders[66]=90
	snakes_ladders[70]=43
	snakes_ladders[76]=88
	snakes_ladders[89]=67
	snakes_ladders[94]=1

	# set the initial position of the player to 0
	pos=0

	# set the counter for the number of moves
	moves=0

	# loop until the player reaches the 100th cell
	while [[ $pos -lt 100 ]]
	do
	    # roll the dice and update the position
	    dice=$((RANDOM%6+1))
	    pos=$((pos+dice))

	    # check if the position is greater than 100
	    if [[ $pos -gt 100 ]]
	    then
		echo "Congralutions! You won the game in $moves moves"
		exit 1
	    fi

	    # check if the position has a snake or ladder
	    if [[ ${snakes_ladders[$pos]} ]]
	    then
		# update the position based on the snake or ladder
		pos=${snakes_ladders[$pos]}
	    fi

	    # print the current position of the player
	    echo "You rolled a $dice and moved to position $pos"

	    # increment the move counter
	    ((moves++))
	 

	done

	# print the number of moves it took to win the game
	echo "Congratulations! You won the game in $moves moves."

	((i++))
	sum=$(($sum + $moves))
done

echo "The average number of moves in 100 times: $(($sum/100))"
