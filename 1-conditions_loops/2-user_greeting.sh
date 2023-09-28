#!/bin/bash

# Ask for user's name
read -p "What's your name? " name

# Ask for name again if user does not input anything
while [[ -z ${name} ]] do
	read -p "Please enter your name " name
done

# Greet the user with the name entered
echo "Good day, ${name}! Trust you're doing great today."
