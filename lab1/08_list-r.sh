#!/bin/sh

path=${1:-.}
depth=${2:-0}
originalpath=${3:-$path}

for name in $path/*
do
	if [ -d $name ]
	then
		if [ $depth -lt 2 ]
		then
			$0 $name $(( $depth + 1 )) $path
		fi
	else
		echo $name | sed "s/$originalpath\///"
	fi
done
