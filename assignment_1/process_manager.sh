#!/bin/bash

# ps is used to show processes, depending on the flags used
# -e flag displays all the processes of running tasks and programs on the entire system
# u flag does not show the entire paths for processes unlike a, but it does display the CPU, MEM consumption in %-age with START time of process initiation, CPU TIME consumed by that process ms (user-oriented)
ps a

# Running top command in the background
# appending an & to a command will run that in background
# it will return '[job_id] process_id' immediately in the shell
read -p "Enter the command to run: " command
echo "Running the command..."

$command &
pid=$!
echo "Process running in background with pid $pid."


# jobs will also return the background processes, but no process id are displayed unlike using -l
jobs -l
sleep 3

# fg will bring the job with job id as 1 given by %1 to foreground
# fg %1

# killing the process if the process was in the background
# since after bringing that ack to the foreground will stop the command from running but it still exists and can be killed like this
# -9 confirms that the process is going to be killed and neither orphaned nor stopped

kill -9 $pid
if [ $? -ne 0 ]
then
	echo "Kill failed"
else
	echo "Killed the process sucessfully"
fi
