#!/bin/bash

read -p "How old are you? " age

while [[ -z ${age} ]] do 
	echo "Please enter your age: "
done


if [[ ! ${age} = +([[:digit:]])+$ ]] then
	echo "'${age}' is not a valid age number."
else
	while [[ ${age} >= 0 ]] do
		if (( ${age} >= 18 )) then
			echo "You are eligible to vote."
		else
			echo "You are not eligible to vote."
		fi
	done
fi
