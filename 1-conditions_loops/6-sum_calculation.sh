#!/bin/bash

# Declare variable i and sum
i=0
sum=0

# Loop to add all numbers from 1 to 10
while (( i <= 10 )) do
	sum=$( (sum + i ))
	i=$(( i + 1 ))
done

# Print out the sum of the numbers
echo "The sum of 1 to 10 is: ${sum}."
