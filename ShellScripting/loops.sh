#/!bin/zsh

# Start of the loop
for a in 1 2 3 4 5 6 7 8 9
do 
	if [ $a == 5 ]
	then
		echo "We got five"
	fi
	# Printing the value
	echo "Iteration number $a"
done
echo "For loop exited"
