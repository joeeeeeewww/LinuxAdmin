#!/bin/bash

#This scripts rename all text files  in the current directory

for file in *.txt
do

mv "$file" "renamed_by_script.$file"

done
