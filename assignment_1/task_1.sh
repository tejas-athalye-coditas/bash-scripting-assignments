# shebang is something which tells the machine which interpreter to use for executing this current file
#!/bin/bash

# since i will be using the test_dir name and path, i stored it in the variable to reuse
task1_dir=$HOME/test_dir

# mkdir is used to create the directory
mkdir $task1_dir
# cd is used for changing directory
cd $task1_dir/
echo "test_dir created at $HOME" # $HOME is a system defined variable and can be seen by the command 'env'

# touch creates an empty file with the provided extension
touch file1.txt file2.txt file3.txt

# move command can be used to move a file permanently
# also it can be used to rename, since renaming is equal to moving the file permanently to its original path only but with a new name
mv file1.txt renamed_file.txt

# copy command is used to copy a file from a source to a destination
cp renamed_file.txt backup.txt

# ls is used to list the contents of a directory
# -l flag is denotes long format
echo "Following are the contents of the $task1_dir: 
$(ls -l)"

# remove function s used to remove the file
rm file2.txt

# pwd prints the present working directory
# since the tmp is in the root directory, we need the sudo privilege to operate
echo "The current working directory is: $(pwd)"
sudo mv file3.txt /tmp

# -r flag denotes that the command is executed recursively
rm -r $task1_dir

echo "Successfully completed TASK 1"


