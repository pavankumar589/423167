#!/bin/bash

# Q1: Find all lines containing the word "error" in log.txt
echo "Q1) Lines with the word 'error' in log.txt:"
grep "error" log.txt

# Q2: Count occurrences of the word "success" in data.txt
echo "Q2) Number of times 'success' appears in data.txt:"
grep -o "success" data.txt | wc -l

# Q3: Extract lines from records.txt that start with a digit
echo "Q3) Lines starting with a digit in records.txt:"
grep "^[0-9]" records.txt

# Q4: Display all lines in file.txt that do NOT contain the word "failed"
echo "Q4) Lines in file.txt without the word 'failed':"
grep -v "failed" file.txt

# Q5: Find all .txt files in the current directory that contain the word "TODO"
echo "Q5) .txt files containing the word 'TODO':"
grep -l "TODO" *.txt

