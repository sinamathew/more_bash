#!/bin/bash

echo 

if [[ ${#} -eq 0 ]] then
	echo "Usage: ${0} filename1 filename2 ..."
	exit 1
fi

for file in "${@}"; do
	if [[ -e ${file} ]] then
		echo -n "The file '${file}' exists and it's "

		if [[ -s ${file} ]] then
			echo -n "not empty"
		fi

		if [[ -r ${file} ]] then
			echo -n ", readable"
		fi

		if [[ -w ${file} ]] then
			echo -n ", writable"
		fi

		if [[ -x ${file} ]] then
			echo -n ", executable"
		fi

		if [[ ! -s ${file} && ! -r ${file} && ! -w ${file} && ! -x ${file} ]] then
			echo -n "empty with no permission"
		fi
		
		echo "."
	else
		echo "The file '${file} doesn't exist."
	fi

	echo
done
