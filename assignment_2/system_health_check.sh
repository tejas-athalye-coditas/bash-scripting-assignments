# Task 6

#!/bin/bash

# -h is human-readable format
# --total summarizes and shows the total disk usage
echo "Disk usage is as follows: "
df -h --total

echo "

"
echo "Following is the memory usage: "
free -h

echo "

"
# -F is a Field seperator, seperating at load average
echo "CPU load using uptime: "
uptime | awk -F'load average: ' '{ print $2 }'

echo "

"
# -p flag shows how much time has passed since the system is started
echo "System uptime is: "
uptime -p


