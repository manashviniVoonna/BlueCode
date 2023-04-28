#!/bin/bash
#print the content of tne file
#read the filename from keyboard
read -p "enter the absolute path of the filename:" fname
#check if file exists(-e option) and its a regular file (-f option)
count=0
if [ -e $fname ] && [ -f $fname ]
then
    #use exec command to read the file contents line by line
    #if the file reaches end of the file, the read command files to read it; this makes while loop to break
    exec < $fname
    #the above line reads entire file and keeps all the links in the read buufer.
    #now read the 'read buffer' till end of its line. once eof reach, the read command returns zero 
    while read data #where data is the variable name. entire line is assigned to variable data
    do
      echo $data
      ((count++))  #to check number of lines
    done   #loop exits when read command returns non-zero (unsuccess) i.e eof
    echo "number of lines in the file $fname: $count"
else
    echo "File $fname does not exists.. Try again"
fi
#EOF
