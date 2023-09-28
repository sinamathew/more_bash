#!/bin/bash

# Check if file exist
if [[ -r "color.txt" ]] then

	# Tell the user the file exist
	echo "The file 'color.txt' exists."

	# Counts the lines in the file and store it
	line_count=$(wc -l < "color.txt")

	# Check if file not empty
	if (( ${line_count} > 0 )) then

		# Prints the number of lines the file contain
		echo "The file 'color.txt' contains ${line_count} lines."
	# If file is empty
	else
		# Tell the user file is empty
		echo "The file 'color.txt is empty."
	fi
else
	# If file doesn't exist
	echo "File does not exist or not readable."
fi
