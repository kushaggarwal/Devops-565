#!/bin/zsh

echo "Hey !, Choose an option"
# Print blank line for user
echo 
echo "a -> To list files in current directory"
echo "b -> To see the current date"
echo "c -> The current user of the system"

read choice

case $choice in
	"a")ls;;
	"b")date;;
	"c")whoami;;
	*) echo "Please provide a valid input";;
esac
