#!/bin/bash

if [[ -f "$1" ]]
then
	echo "The argument is a file , displaying its content..."
	sleep 2
	cat $1
elif [[ -d "$1" ]]
then
	echo "The argument is a directory running ls -la"
	sleep 2
	ls -la $1
else 
	echo "The argument is neither a file or a directory"	

fi


#NOTE: run man test to see testing conditions
