#!/usr/bin/python3

import sys
import re

tag = r" [A-Za-z0-9/]+=\"[^\"]*\""
pattern = re.compile(r"<a(" + tag + r")*"
                     r" href=\"\""
		     r"(" + tag + r")*"
                     r" title=\"\""
		     r"(" + tag + r")*"
                     r"( )?(/)?>")
while True:
    line = sys.stdin.readline()
    if not line:
        break
    if pattern.match(line):
        print(pattern.match(line).group())
    else:
        print("None")
