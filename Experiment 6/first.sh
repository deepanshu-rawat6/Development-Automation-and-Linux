#!/bin/zsh

echo "Enter the text to search for: " 
read search_text
echo "Enter the text to replace with: " 
read replace_text

# Perform the search and replace recursively in all files
find . -type f -print0 | xargs -0 sed -i "s/$search_text/$replace_text/g"

echo "Operation successful!"
