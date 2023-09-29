#!/bin/bash

i=0
sum=0

while (( i <= 10 )) do
	sum=$((sum + i))
	i=$((i + 1))
done

echo "The sum of 1 to 10 is: ${sum}."
