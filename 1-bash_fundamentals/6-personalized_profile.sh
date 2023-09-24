#!/bin/bash

# Ask user for name
echo -n "What's your name? "
read name

# Ask user for age
echo -n "How old are you? "
read age

# Display personalized message with requested data
echo "Good day, ${name}."
echo "Do you know that you were born ${age} years ago?"
echo "Now you know :), Do have a wonderful time, ${name}."
