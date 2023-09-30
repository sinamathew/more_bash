#!/bin/bash

target=$((RANDOM % 100 + 1))

while true; do
	read -p "Guess a lucky number: " guess

	if [[ ${guess} -eq ${target} ]] then
		echo "Yes, you guess right :)."
		exit 0
	elif [[ ${guess} -gt ${target} ]] then
		echo "Your guess is high, guess again."
	else
		echo "Your guess is low, try again."
	fi
done
