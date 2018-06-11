#!/usr/bin/python3

import sys
import re

pattern = re.compile(r"([A-Z0-9]{1,5}[ -]?[A-Z0-9]{1,5}"
                     r" ([A-Z][a-z-']*[ -']?)*[A-Z][a-z-']*)"
                     r"|(([A-Z][a-z-']*[ -']?)*[A-Z][a-z-']*"
                     r" [A-Z0-9]{1,5}[ -]?[A-Z0-9]{1,5})")
while True:
    line = sys.stdin.readline()
    if not line:
        break
    print(pattern.match(line))
