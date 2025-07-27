# Task 5

#!/bin/bash

echo "Enter the dir path to count the number of files in it: "
read dir_path

# find will locate the dir_path given by the user and then recursively search for all the files in that
# wc -l will count the number of lines of the o/p of the find command, which is infact the number of files
file_count=$(find "$dir_path" -type f | wc -l)
echo "Total number of files in $dir_path are: $file_count"
