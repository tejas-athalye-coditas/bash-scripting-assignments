# Task 3

#/bin/bash

echo "Enter the path of directory to be backed up: "
read path

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
backup_dir=/tmp/test-backups
backup_dir_name=$backup_dir/backup_$timestamp

# checks whether the dir for all the backups exists
if [ ! -d $backup_dir ]
then
	mkdir $backup_dir
	echo "Create $backup_dir and backuping..."
else
	echo "Backuping to $backup_dir"
fi

# copies recursively the dir in user input path to a backup_dir_name path in the variable
cp -r $path $backup_dir_name
if [ $? -ne 0 ]
then
	echo "Errors while backuping"
else
	echo "Copied to $backup_dir_name"
fi


# we can use cron jobs by opening the 'cron -e' editor to schedule them for everyday
# using at we can only schedule for that specific day or only once
# using a loop we can implement the jobs in the script itself but it would consume more resources and we need to keep that loop running by not killing the script running
