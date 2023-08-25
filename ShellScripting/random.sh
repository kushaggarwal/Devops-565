#!/bin/zsh

# Taking input from user for age
echo "Please enter your age"
read age
echo "Age entered is"
echo $age

# Control flow for checking the age to be greater than 18
if [ $(( $age % 2 )) -eq 0 ]
then
	echo "It is even"
else
	echo "It is odd"
fi
