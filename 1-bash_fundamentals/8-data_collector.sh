#!/bin/bash

# Declare an array to hold personal infomation
user_data=()

# Ask user for name
read -p "What's your name? " name

# Ask user for age
read -p "How old are you? " age

# Ask for Nation
read -p "What's your Nation " nation

# Ask for user's location
read -p "Where do you live? " loc

# Ask user's favorite color
read -p "What's your favorirte color? " fav_color

# Print new line
echo
echo

# Intialize the array to hold personal infomation
user_data=("${name}" "${age}" "${nation}" "${loc}" "${fav_color}")

# Display a message to the user that includes their data
echo "Your name is ${user_data[0]}."
echo "You are ${user_data[1]} years old."
echo "You are from ${user_data[2]}."
echo "You live in ${user_data[3]}."
echo "Your favorite color is ${user_data[4]}."
