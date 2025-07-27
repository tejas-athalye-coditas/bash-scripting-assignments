# Task 7

#!/bin/bash

users_file=/mnt/d/github/bash-scripting-assignments/assignment_2/users.txt
default_password="root"

if [ ! -f $users_file ]
then
	echo "Users file with usernames doesn't exist!
	Create one and then run the script again."
	exit 404
else
	echo "Cooking..."
fi
# IFS is Internal Field Seperator, used as split() function
# by default it is set to space/tab-space/newline
# if we want ot use another seperator write something as IFS=seperator_here
while IFS= read -r usernames || [[ -n "$usernames" ]]
do
	if [ -z "$usernames" ]
	then
		continue
	fi

	if id "$username" &>/dev/null
	then
		echo "User '$usernames' already exists. Skipping..."
		continue
	fi
	
	# Using flag -m will create that user's new ~ dir
	sudo useradd "$usernames"


	echo "$usernames:$default_password" | sudo chpasswd
	
	# chage is used to manage the passwords
	# -d denotes the last day of expiry is in mentioned days or date
	# here 0 indicates that the current day is the last day
	# so whenever one tries to login, it suggests that its the last day and hence user is forced to change the password
	sudo chage -d 0 "$usernames"

# takes the users file as input to the while loop
done < "$users_file"

# echo "Created these below users sucessfullly with a default password $(cat $users_file)"
