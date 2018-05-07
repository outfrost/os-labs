#!/bin/sh

find test/ -maxdepth 2 \( -iregex '.*\.jpg' -o -iregex '.*\.gif' \) -print | \
		while read filename
		do
			realpath "$filename"
		done | \
		tail -n 5
