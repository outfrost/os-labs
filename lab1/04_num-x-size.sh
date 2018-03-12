#!/bin/bash

i=1;

for name in ${1:-.}/*
do
	du -0bs --apparent-size "$name"
done | sort -z -k 1 -n | sed -z 's/^[0-9]*\t//' | \
while IFS= read -r -d '' name
do
	if [ -x $name ]
	then
		NUMBER=$i rename 's/$/.$ENV{NUMBER}/' $name
		((i++))
	fi
done
