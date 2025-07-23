# This is the TASK 3

#!/bin/bash

echo "Finding for a file named 'test.log' in /var/log/ $(find /var/log/*.log -type f -name "test.log")"

# -c flag is used to track the count
echo "count of 'error' in test.log is: $(grep -c "error" /var/log/test.log)."

# prints the first 10 lines by default
# use head -n X, where X is the first number of lines to be printed
head /var/log/test.log

# prints the last 10 lines by default
# use tail -n X, where X is the last number of lines to be printed
tail /var/log/test.log

# this will search in the whole system (/)
# # -mtime n returns the list of the files that are modified in n days
#  -type f tells us the type of filter used is 'file'
find / -mtime -7 -type f

# "*.sh" will search for all the files ending in '.sh'
find / -type f "*.sh"
