#!/bin/sh

find test/ -maxdepth 2 \( -iregex '.*\.jpg' -o -iregex '.*\.gif' \) -print | \
		while read filename
		do
			realpath "$filename"
		done | \
		sed 'y/\//\\/' | \
		tail -n 5
