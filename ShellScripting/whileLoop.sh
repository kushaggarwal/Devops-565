#!/bin/zsh
a=0
while [ $a -lt 10 ]
do
	echo $a
	if [ $a -eq 5 ]
	then
		echo "Loop with 5"
		break
	fi
	((a++))
done
