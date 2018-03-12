#!/bin/sh

for name in ${1:-.}/*
do
	if [ -x $name ]
	then
		mv $name ${2:-.}/
	fi
done
