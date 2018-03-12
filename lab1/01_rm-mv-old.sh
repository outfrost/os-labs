#!/bin/sh

path=${1:-.}

rm $path/*.old > /dev/null 2>&1

for name in $path/*
do
	if [ -x $name ]
	then
		rename 's/$/.old/' $name
	fi
done
