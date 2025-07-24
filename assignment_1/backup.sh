# this is the Task 7

#!/bin/bash

# checks whether backup_dir exists, if not then creates
if [ ! -d backup_dir ]
then
	mkdir backup_dir
	echo "Created backup_dir directory"
else
	echo "backup_dir already exists..."
fi

# checks whether files to be copied exists, if not then copies
if [ ! -f backup_dir/passwd ] && [ ! -f backup_dir/group ]
then
	sudo cp /etc/passwd backup_dir && sudo cp /etc/group backup_dir
else
	echo "We already have passwd and group in the directory"
fi

# adds the backup_dir to backup_dir.tar.gz
# gz denotes gunzip type of compression
# -cvzf denotes compress verbose gunzip file
tar -cvzf backup_dir.tar.gz backup_dir
echo "created the archive"

# creates restore_dir in tmp, if not exists
if [ ! -d /tmp/restore_dir ]
then
	mkdir /tmp/restore_dir
	echo "Creating restore_dir and extracting...".
else
	echo "restore_dir exists... Extracting..."
fi

# -C flag denotes the following sequence: cp -> cd -> unzip -> rm zip
tar -xvzf /mnt/d/github/bash-scripting-assignments/assignment_1/backup_dir.tar.gz -C /tmp/restore_dir/

if [ $? -ne 0 ]
then
	echo "Failed extracting..."
else
	echo "Extracted to /tmp/restore_dir/"
fi
