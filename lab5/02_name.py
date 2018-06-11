#!/usr/bin/python3

import sys
import re

pattern = re.compile(r"([A-Z][a-z-']*[ -']?)*[A-Z][a-z-']*")
while True:
    line = sys.stdin.readline()
    if not line:
        break
    print(pattern.match(line))
