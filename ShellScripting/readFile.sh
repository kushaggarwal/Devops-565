#!/bin/zsh

file=wh.txt

while read line; 
do
	echo $line
done < $file
