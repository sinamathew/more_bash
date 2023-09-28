#!/bin/bash

read -p "Enter any number: " num

while [[ -z ${num} ]]
do
	read -p "Please enter any number: " num
done

if [[ ! ${num} =~ ^-?[[:digit:]]+$ ]] then
	echo "'${num}' is not a valid number."
else
	if (( num > 10 )) then
		echo "The number '${num}' is greater than 10."
	elif (( num < 10 )) then
		echo "The number '${num}' is less than 10."
	else
		echo "The number '${num}' equals 10."
	fi
fi
