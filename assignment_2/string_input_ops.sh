# Task 1

#!/bash/bin

echo "Enter a string: "
read string

echo "The length of $string is ${#string}"
reverse=$(echo $string | rev)
echo "The reverse of $string is $reverse"
echo ""
