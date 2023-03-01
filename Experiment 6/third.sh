#!/bin/zsh

echo "Enter a text: " 
read input_text

# Transform the input text to lowercase
lowercase_text="${input_text:l}"

# Transform the input text to uppercase
uppercase_text="${input_text:u}"

# Transform the first letter of the input text to uppercase
first_letter_uppercase_text="$(tr '[:lower:]' '[:upper:]' <<< ${input_text:0:1})${input_text:1}"

echo "Lowercase: $lowercase_text"
echo "Uppercase: $uppercase_text"
echo "First letter uppercase: $first_letter_uppercase_text"

