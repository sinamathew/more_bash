#!/bin/bash

# Ask user for any number
read -p "Enter any number: " num

# Keep asking for number until something is entered
while [[ -z ${num} ]] do
	read -p "Please enter any number: " num
done

# If variable 'num' does not contain numeric value
if [[ ! ${num} =~ ^-?[[:digit:]]+$ ]] then
	echo "'${num}' is not a valid number."

# If variable 'num' contains numeric value
else
	if (( num > 10 )) then
		echo "The number '${num}' is greater than 10."
	elif (( num < 10 )) then
		echo "The number '${num}' is less than 10."
	else
		echo "The number '${num}' equals 10."
	fi
fi
