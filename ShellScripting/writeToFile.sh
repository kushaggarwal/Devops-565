#!/bin/zsh

file=wh.txt
echo "Enter the contenr into the file $file"
while read line
do
	echo $line >> $file
done
