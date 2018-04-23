#!/bin/sh

if [ -x 01_mkfiles.sh ]
then
	./01_mkfiles.sh
	
	cd lab2/
	abspath_plik1="$(realpath -s a/b/c/plik1)"
	
	echo "Links pointing to lab2/a/b/c/plik1:"
	for link in e/*
	do
		if [ "$(readlink -f $link)" = "$abspath_plik1" ]
		then
			realpath -s "$link"
		fi
	done
	
	mkdir -p f
	cp -P e/link_plikB_bez f/
	cp "$(readlink -f e/link_plikA)" f/
else
	echo "Required dependency not found: 01_mkfiles.sh"
	echo "Make sure 01_mkfiles.sh exists and is executable."
fi
