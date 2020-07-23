#!/bin/bash 
flag=0
while [ $flag -eq 0 ]
do
	echo "Enter a valid user name"
	echo "A valid user name starts with capital letter and has minimum 3 characters"
	read firstName
	pattern="^[A-Z]{1}[a-z]{2}"

	if [[ $firstName =~ $pattern ]]
	then
		echo "Good! It is valid"
		flag=1
	else
		echo "OOps! It is not valid. Enter again... "
	fi
done
