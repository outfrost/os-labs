#!/bin/sh

concatname=${1:-.}/concat.$2

for name in ${1:-.}/*.$2
do
	echo '================================' >> $concatname
	echo $name | awk --field-separator \/ '{print $NF}' >> $concatname
	echo '================================' >> $concatname
	cat $name >> $concatname
	rm $name
done
