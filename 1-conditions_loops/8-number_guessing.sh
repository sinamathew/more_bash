#!/bin/bash

# Generate random numbers from 1 to 100 and save to variable target
target=$((RANDOM % 100 + 1))

# Interactive loop
while [[ true ]] do

	# Ask user a number
	read -p "Guess a lucky number: " guess

	# Check if it's a valid number
	if [[ ${guess} =~ ^-?[[:digit:]]+$ ]] then

		# If user guessed right
		if [[ ${guess} -eq ${target} ]] then
			echo "Yes, you guess right :)."

			# Exit out of the loop
			exit 0

		# If guess is wrong, help user to guess right
		elif [[ ${guess} -gt ${target} ]] then
			echo "Your guess is high, guess again."
		else
			echo "Your guess is low, try again."
		fi

	# Error message if guess is not valid
	else
		echo "What you entered is not a valid number."
	fi
done
