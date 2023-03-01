#!/bin/zsh

echo "Enter a character: " 
read input_char

if [[ "$input_char" =~ ^[a-zA-Z0-9]+$ ]]; then
  echo "$input_char is a valid alphanumeric character"
else
  echo "$input_char is not a valid alphanumeric character"
fi
