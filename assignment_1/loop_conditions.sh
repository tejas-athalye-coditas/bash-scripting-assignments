# Task 10

#/bin/bash

file=/mnt/d/github/bash-scripting-assignments/assignment_1

if [ -f $file/README.md ]
then
	echo "File exists..."
else
	echo "File not found"
fi

echo "----------"

echo "for loop 1 - 10"
# seq command is like range given as- start_index last_index
for i in $(seq 1 10)
do
	echo $i
	sleep 0.5
done

echo "----------"

echo "while loop 10 - 1"
start=10
while [ $start -ge 1 ]
do
	echo $start
	start=$(( $start - 1 ))
	sleep 0.5

done
