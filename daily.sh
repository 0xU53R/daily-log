#!/bin/bash

# Go to your repo (CHANGE THIS PATH)
cd ~/Documents/GITHUB/daily-log || exit

# Get date and time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# File name
FILE="$DATE.txt"

# Ask for input
echo "What did you do today?"
read INPUT

# Write to file
echo "$INPUT" > "$FILE"

# Git commands
git add .
git commit -m "log: $DATE"
git push

echo "✅ Saved and pushed: $FILE"
