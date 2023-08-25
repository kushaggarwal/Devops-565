#!/bin/zsh

for i in {1..5}
do
	if [ $i -eq 3 ]
	then
		echo "Skipping this $i iteration"
		continue
	fi 
	echo "Welcome to $i times"
done
