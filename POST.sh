#!/bin/bash

output_file="merged_sorted_file.txt"

sort -m shakespeare_*.out > "$output_file"

echo "Merged and sorted files into $output_file"

if [[ -e "merged_sorted_file.txt" ]]; then
    uniq -c merged_sorted_file.txt > countsOfWords
fi
sort -nr countsOfWords > sorted_countsOfWords
mv sorted_countsOfWords countsOfWords

echo "countsOfWords is created"
