#!/bin/sh

./01_mkfiles.sh

cd lab2/
abspath_plik1=$(realpath -s a/b/c/plik1)

echo "Links pointing to lab2/a/b/c/plik1:"
for link in e/*
do
	if [ "$(readlink -f $link)" = "$abspath_plik1" ]
	then
		realpath -s $link
	fi
done
