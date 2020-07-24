#!/bin/bash
function validateName(){
name=$1
pattern=$2
flag=0
while [ $flag -eq 0 ]
do

	if [[ $name =~ $pattern ]]
	then
		echo "Good! It is valid"
		flag=1
	else
		echo "OOps! It is not valid. Enter again... "
		read name
	fi
done
#echo $name
}

echo "Enter Valid First name (Starts with Capital letter and has min 3 characters)";
read firstName ;
pattern="^[A-Z]{1}[a-z]{2}"
validateName $firstName $pattern

echo "Enter Valid Last name (starts with capital letter and has min 3 characters)";
read lastName ;
validateName $lastName $pattern

echo "Enter a valid Email Id"
pattern="^[A-Za-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[a-zA-Z0-9]{1,}\.[A-Za-z]{2,4}([.][a-zA-Z]{2}){0,1}$"
read email
validateName $email $pattern

echo "Enter a valid mobile number "
echo "(Enter country code followed by space and 10 digit number)"
pattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
read mobNo
validateName "$mobNo" "$pattern"

echo "Enter a valid password "
echo "Password must be min 8 characters"
read password
pattern="^.{8,}$"
validateName $password $pattern
