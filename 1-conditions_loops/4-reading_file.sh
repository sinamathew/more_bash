#!/bin/bash

# Check if file exist and not empty
if [[ -r "color.txt" && -s "color.txt" ]] then

	# Read and prints the file if it exist and not empty
	echo "The file 'color.txt' exists."
	echo "Content of the file:"
	echo "-----------------------------------------------"
	cat color.txt
	echo "-----------------------------------------------"
	echo "End of file."
else
	# If file doesn't exist
	echo "File does not exist or is empty."
fi
