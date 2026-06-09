#!/bin/bash

read -p "Enter source directory: " source_dir

if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist."
    exit 1
fi

timestamp=$(date +"%Y-%m-%d_%H-%M")
backup_dir="backup_$timestamp"

mkdir -p "$backup_dir"

count=$(find "$source_dir" -maxdepth 1 -type f -name "*.txt" | wc -l)

cp "$source_dir"/*.txt "$backup_dir" 2>/dev/null

echo "Backup directory created: $backup_dir"
echo "Copying .txt files..."
echo "Backup complete! Files backed up: $count"
