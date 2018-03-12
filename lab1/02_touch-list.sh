#!/bin/sh

if [ "$1" ] && [ -d "$1" ] && [ -r "$1" ] && [ -x "$1" ]
then
	if [ "$2" ] && [ -f "$2" ] && [ -r "$2" ]
	then
		while IFS= read -r filename
		do
			if [ ! -e "$1/$filename" ]
			then
				touch "$1/$filename"
			fi
		done < $2
	else
		echo "$2 (arg2) is not a file or is not accessible."
		echo "Usage: $0 <target_directory> <list_file>"
	fi
else
	echo "$1 (arg1) is not a directory or is not accessible."
	echo "Usage: $0 <target_directory> <list_file>"
fi
