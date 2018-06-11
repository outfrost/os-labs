#!/usr/bin/python3

import sys
import re

pattern = re.compile(r"([A-Z]{2,3}[A-Z0-9]{4,5})|([A-Z][0-9][A-Z0-9]{3,5})")
while True:
    line = sys.stdin.readline()
    if not line:
        break
    print(pattern.match(line))
