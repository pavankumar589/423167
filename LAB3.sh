#!/bin/bash

# Question 1:
echo "Files starting with 'a':"
ls a*

# Question 2:
echo "Files with .txt extension:"
ls *.txt

# Question 3:
echo "Files with exactly 5 characters in the name:"
find . -maxdepth 1 -type f -printf "%f\n" | grep -E '^.{5}$'

# Question 4:
echo "Files starting with any letter between b and e:"
ls [b-e]*

# Question 5:
echo "Files ending with .log and second character is a number:"
ls ?[0-9]*.log

