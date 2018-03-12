#!/bin/sh

concatname='$1~concat~'

while read name
do
	echo '================================' >> $concatname
	echo $name >> $concatname
	echo '================================' >> $concatname
	cat $name >> $concatname
	rm $name
done < $1

mv $concatname $1
