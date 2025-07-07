#!/usr/bin/bash
#word="saheed is not good enough"
echo "Enter the string"
read string
count=$(echo "$string" | wc -w)
echo "word count is $count"
