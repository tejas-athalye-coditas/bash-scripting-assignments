# Task 9

#!/bin/bash

file=/mnt/d/github/bash-scripting-assignments/assignment_1/directory_list.txt
ls -l >> $file
date >> $file
echo "-------------" | tee -a $file

cat $file
echo "Type a word to search in $file: "
read  word
echo "Following are the search results for '$word': "
grep -w "$word" $file

# none == name, normal sort, or use -U
# -r flag stands for reverse
# -S size, -t time, -v version, -X extension
ls -l --sort=none >> /mnt/d/github/bash-scripting-assignments/assignment_1/sorted_list.txt
echo "Copied the sorted list to sorted_list.txt"
