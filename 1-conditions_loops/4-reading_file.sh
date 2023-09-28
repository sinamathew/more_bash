#!/bin/bash

if [[ -r "color.txt" && -s "color.txt" ]] then
	echo "The file 'color.txt' exists."
	echo "Content of the file:"
	echo "-----------------------------------------------"
	cat color.txt
	echo "-----------------------------------------------"
	echo "End of file."
else
	echo "File does not exist or is empty."
fi
