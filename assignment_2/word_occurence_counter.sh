# Task 4

#!/bin/bash

echo "Enter the word to count its occurences: "
read word

echo "File path to count the occurences of $word: "
read file_path

echo "The occurences of '$word' in '$file_path' are: "

# grep -o will print the matching parts of the word/pattern
# grep -w can also be used but it will only match whole words
# the wc -l command will count the lines which will be printed by the grep -o to get us the final word count
grep -o "$word" $file_path | wc -l
