#!/bin/bash
file="$1"

tr '[:upper:]' '[:lower:]' <"$file" |
sed -e 's/[[:punct:]]/ /g'|
tr -s ' ' '\n' |
grep -v '^$' | 
sort
