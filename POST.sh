#!/bin/bash

output_file="merged_sorted_file.txt"

sort -m shakespeare_*_sorted > "$output_file"

echo "Merged and sorted files into $output_file"

uniq -c merged_sorted_file.txt > countsOfWords

sort -nr countsOfWords > sorted_countsOfWords

mv sorted_countsOfWords countsOfWords

echo "countsOfWords is created"
