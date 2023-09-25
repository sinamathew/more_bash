#!/bin/bash

# Ask user for mathematical expression
read -p "Enter basic mathematical arithmetic: " math

# Display mathematical result
echo -n "The result of the arithmetic is: "

# Calculate the arithmetic
result=$((math))

# Display the result
echo "${result}"
