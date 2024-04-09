#!/bin/bash

output_file="merged_sorted_file.txt"

sort -m shakespeare_*.out > "$output_file"

echo "Merged and sorted files into $output_file"
