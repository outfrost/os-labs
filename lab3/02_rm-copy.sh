#!/bin/sh

find test/ -iregex '.*~' \( -mmin +2 -o -mmin 2 \) -delete
