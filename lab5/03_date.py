#!/usr/bin/python3

import sys
import re

pattern = re.compile(r"11[-/.]0?6[-/.](20)?18")
while True:
    line = sys.stdin.readline()
    if not line:
        break
    print(pattern.match(line))
