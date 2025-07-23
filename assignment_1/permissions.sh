# this is the 2nd task

#!/bin/bash

touch secure.txt
# current permissions were -rwxrwxrwx

# 7 denotes read, write, execution
# 1 denotes execution only
chmod 711 secure.txt

chown -c root secure.txt

echo "The changes in the secure.txt can be shown as: 
$(ls -l)"

# changing the group ownership of the file to 'root' group
chown -c root:root secure.txt

# > operator will direct the output of the echo to the secure.txt file
echo "The final changes are as follows:

$(ls -l)" > secure.txt
