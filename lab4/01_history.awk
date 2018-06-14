#!/usr/bin/awk -f

{
	argcounts[$2] += NF - 2
	occurrences[$2]++
}

END {
	for (command in argcounts) {
		avgcount = argcounts[command] / occurrences[command]
		print command, avgcount
	}
}
