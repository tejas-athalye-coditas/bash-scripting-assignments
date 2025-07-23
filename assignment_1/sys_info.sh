# This is the TASK 4

#!/bin/bash

#shows the hostname of the machine
hostname 


# shows the uptime of the system with the number of users and load average
uptime

# df shows the disk usage and information about all the volumes/disks in the file system like- total size, available memory, usgae in percentage and the mount on which it is mounted on
df -h

# top opens an interactive session showing us the various processses and theri stats running in the system
# also it gives stats about the process like- types of tasks (running, sleeping, stopped, zombie)
# also overall CPU usage (in %'age), Memory usage in MB is also shown
top -b -o %CPU | head -n 12

# this (by using -h flag) will show the usage of the root directory in human readable format or a collective usage for all the files inside /
# without using -h flag, it will print all the files and the disk memory taken by them 
df -h /

