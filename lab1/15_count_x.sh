#!/bin/sh

count=0

for name in ${1:-.}/*
do
	if [ -x $name ]
	then
		count=$(( $count + 1 ))
	fi
done

echo $count
