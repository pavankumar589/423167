#!/bin/bash

# Q1) Initialize an empty Git repository
echo "Initializing empty Git repository..."
git init

# Q2) Set Git username and email
echo "Setting Git user and email..."
git config user.name "YourName"
git config user.email "your.email@example.com"

# Q3) Save modifications (stage and commit)
echo "Staging all modified files..."
git add .

echo "Committing changes..."
git commit -m "Initial commit or saved modifications"

