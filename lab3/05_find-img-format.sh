#!/bin/sh

find test/ -maxdepth 2 \( -iregex '.*\.jpg' -o -iregex '.*\.gif' \) -size -64c -print | \
		while read filename
		do
			echo $(realpath "$filename") "|" $(date -r "$filename" +"%Y-%m-%d | %H:%M:%S")
		done | \
		tee 'test/images.txt'
