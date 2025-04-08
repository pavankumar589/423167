#!/bin/bash

# Q1) Archive all .c files into file.tar
echo "Creating file.tar with all .c files..."
tar -cvf file.tar *.c

# Q2) Extract all files from file.tar
echo "Extracting all files from file.tar..."
tar -xvf file.tar

# Q3) Archive and compress .c files using gzip
echo "Creating file.tar.gz with all .c files..."
tar -cvzf file.tar.gz *.c

# Q4) Extract Cfiles.tar.gz
echo "Extracting Cfiles.tar.gz..."
tar -xvzf Cfiles.tar.gz

# Q5) Create a compressed archive named myarchive.tar.gz from the 'myfolder' directory
echo "Creating myarchive.tar.gz from myfolder directory..."
tar -cvzf myarchive.tar.gz myfolder

