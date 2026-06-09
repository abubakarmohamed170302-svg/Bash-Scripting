#!/bin/bash

read -p "Enter filename to check: " filename

if [ -e "$filename" ]; then
    echo "File '$filename' exists."

    if [ -r "$filename" ]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    if [ -w "$filename" ]; then
        echo "✓ File is writable"
    else
        echo "✗ File is not writable"
    fi

    if [ -x "$filename" ]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi
else
    echo "File '$filename' does not exist."
fi
