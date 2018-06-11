#!/usr/bin/python3

import sys
import re

pattern = re.compile(r"[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+"
                     r"(\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*"
                     r"@[A-Za-z0-9]+(-[A-Za-z0-9]+)*"
                     r"(\.[A-Za-z0-9]+(-[A-Za-z0-9]+)*)*")
while True:
    line = sys.stdin.readline()
    if not line:
        break
    print(pattern.match(line))
