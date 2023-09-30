#!/bin/bash

# Prints a new line
echo 

# Check for argument
if [[ ${#} -eq 0 ]] then
	echo "Usage: ${0} filename1 filename2 ..."
	exit 1
fi

# Loop to check all files in the argument
for file in "${@}"; do

	# Check for file existence
	if [[ -e ${file} ]] then
		echo -n "The file '${file}' exists and it's "

		# Check for file read permission
		if [[ -r ${file} ]] then
			echo -n "readable"
		else
			echo -n "not readable"
		fi

		# Check for file write permission
		if [[ -w ${file} ]] then
			echo -n ", writable"
		else
			echo -n ", not writable"
		fi

		# Check for file execute permission
		if [[ -x ${file} ]] then
			echo -n ", executable"
		else
			echo -n ", not executable"
		fi

		# Check for file size
		if [[ -s ${file} ]] then
			echo -n " and not empty"
		else
			echo -n " and empty"
		fi
		
		# Add period and new line
		echo "."

	# If file doesn't exist
	else
		echo "The file '${file} doesn't exist."
	fi

	# Prints new line
	echo
done
