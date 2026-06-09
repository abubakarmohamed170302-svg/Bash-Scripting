#!/bin/bash

mkdir -p bash_demo
cd bash_demo || exit

echo "This file was created by a Bash script on $(date +%F)" > demo.txt

echo "Directory 'bash_demo' created."
echo "File 'demo.txt' created."
echo
echo "File contents:"
cat demo.txt
