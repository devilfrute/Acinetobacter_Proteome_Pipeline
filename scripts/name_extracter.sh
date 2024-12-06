#!/bin/bash

# Input directory containing the .faa files
input_dir="/home/vamsi/input"

# Output directory to save the protein names files
output_dir="/home/vamsi/outputs"

# Ensure the output directory exists, create it if not
mkdir -p "$output_dir"

# Navigate to the input directory
cd "$input_dir" || exit

# Iterate over each .faa file in the input directory
for file in *.faa; do
    # Extract protein names and save them to a new file in the output directory
    grep ">" "$file" | awk -F '>' '{print $2}' > "$output_dir/${file%.faa}_protein_names.txt"
done

