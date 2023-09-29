#!/bin/bash

# Ask user for age
read -p "How old are you? " age

# Ask for user's age if user did not enter age
while [[ -z ${age} ]] do 
	read -p "Please enter your age: " age
done

# Print an error message if user age is not a valid age
if [[ ! ${age} =~ ^[0-9]+$ ]] then
	echo "'${age}' is not a valid age number."

# Prints out user's voting eligibility
else
	if (( ${age} >= 18 )) then
		echo "You are eligible to vote."
	else
		echo "You are not eligible to vote."
	fi
fi
