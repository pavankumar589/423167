#!/bin/bash

# Q1: Extract only ERROR messages with timestamps
echo "Q1) ERROR messages with timestamps from log.txt:"
awk '$2 == "ERROR" { print $1, $4 }' log.txt

# Q2: Compute average of each subject from tab-separated CSV file
echo "Q2) Average marks for each subject from marks.tsv:"
awk -F'\t' '
NR>1 {
    math += $2; sci += $3; eng += $4; count++
}
END {
    print "Math Average:", math/count
    print "Science Average:", sci/count
    print "English Average:", eng/count
}' marks.tsv

# Q3: Count occurrences of each IP in server.log
echo "Q3) IP address count from server.log:"
awk '{ ip[$1]++ } END { for (i in ip) print i, ip[i] }' server.log

# Q4: Swap first and last words in each line
echo "Q4) Swap first and last words from input.txt:"
sed -E 's/^(\S+)(.*)(\S+)$/\3\2\1/' input.txt

# Q5: Remove consecutive duplicate words
echo "Q5) Remove duplicate consecutive words from dup.txt:"
sed -E 's/\b(\w+)( \1\b)+/\1/g' dup.txt

