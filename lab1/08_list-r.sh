#!/bin/sh

if [ "$1" ] && [ -d "$1" ] && [ -r "$1" ] && [ -x "$1" ]
then
	path="$1"
	depth="${2:-0}"
	originalpath=$(echo "${3:-$path}" | sed -e 's/[]\/$*.^[]/\\&/g')
	
	for name in "$path"/*
	do
		if [ -d "$name" ]
		then
			if [ "$depth" -lt "2" ]
			then
				$0 "$name" $(( $depth + 1 )) "$path"
			fi
		else
			echo "$name" | sed "s/$originalpath\///"
		fi
	done
else
	echo "$1 (arg1) is not a directory or is not accessible."
	echo "Usage: $0 <directory>"
fi
