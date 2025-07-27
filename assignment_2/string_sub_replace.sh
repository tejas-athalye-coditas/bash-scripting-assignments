# Task 2

#/bin/bash

string="Hello World!"

echo "Our string: $string"
echo "The substring is $(echo "$string" | grep -o "World")"

echo "Replacing the World by "
read name

new_string="${string/World/$name}"
echo "Our new string is $new_string"
