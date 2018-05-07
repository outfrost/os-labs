#!/bin/sh

while read filepath skip filedate skip filetime
do
	echo $(basename "$filepath") \
	$(echo "$filedate" | tr '-' '.') \
	$(echo "$filetime" | sed 's/^[0-9][0-9]:\([0-9][0-9]\):[0-9][0-9]$/\1/') \
	$(echo "$filetime" | sed 's/^[0-9][0-9]:[0-9][0-9]:\([0-9][0-9]\)$/\1/')
done < test/images.txt
