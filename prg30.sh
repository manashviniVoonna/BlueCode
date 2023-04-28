#!/bin/bash
#while infinite while loop
#use break key word to break the loop
count=1
>t.out #create empty file
#while true
while : #same as the above line
do
  read -p "enter the text.. end this with "stop" word: " t1
  if [ $t1 = stop ]
   then
    echo "you asked me to stop.. thankyou."
    echo "you entered the below data:"
    cat t.out #print the file content before u exit.
    break
    #break statement breaks the loop; in this while loop
  fi
  #insert the read data into t.out
  echo $t1>>t.out
  echo "continuing the loop.. now in iteration $count"
  ((count++)) #increment the counter to print number of iteratives
done
#end












