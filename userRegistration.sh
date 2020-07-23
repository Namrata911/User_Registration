#!/bin/bash 
function validateName(){
name=$1
flag=0
while [ $flag -eq 0 ]
do
	pattern="^[A-Z]{1}[a-z]{2}"

	if [[ $name =~ $pattern ]]
	then
		echo "Good! It is valid"
		flag=1
	else
		echo "OOps! It is not valid. Enter again... "
		read name
	fi
done
echo $name
}

echo "Enter Valid First name (Starts with Capital letter and has min 3 characters)";
read firstName ;
validateName $firstName

echo "Enter Valid Last name (starts with capital letter and has min 3 characters)";
read lastName ;
validateName $lastName
