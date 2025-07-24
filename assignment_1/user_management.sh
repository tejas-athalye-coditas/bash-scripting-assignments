# this is task 8

#/bin/bash

getent passwd testuser
if [ $? -ne 0 ]
then
	sudo useradd testuser
	echo "added testuser successfully!"
else
	echo "testuser already exists..."
fi

getent group testgroup
if [ $? -ne 0 ]
then
	sudo groupadd testgroup
	echo "Added testgroup sucessfully"
else
	echo "testgroup already exists..."
fi

sudo usermod -a -G testgroup testuser
echo "Successfully added testuser to testgroup"

echo "Changing passowrd for testuser"
sudo passwd testuser

echo"Details of testuser:
$(id testuser)"

echo "Deleting the user testuser"
sudo userdel testuser
sudo groupdel testgroup
echo "Task Done!"
