#!/bin/bash

# Define input and output directories
input_dir="/home/vamsi/input"
output_dir="/home/vamsi/output"

# Loop through all files in the input directory
for file in "$input_dir"/*; do
    if [ -f "$file" ]; then
        # Extract file name
        filename=$(basename "$file")
        
        # Run awk command and save output to a file in the output directory
        awk '/^>/ && toupper($0) ~ /HYPOTHETICAL/ {bool=1}; /^>/ && toupper($0) !~ /HYPOTHETICAL/ {bool=0}; {if (bool==0) print}' "$file" > "$output_dir/$filename"
        
        echo "File '$filename' processed and saved to '$output_dir/$filename'"
    fi
done

