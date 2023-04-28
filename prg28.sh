#!/bin/bash
#while loop
echo "read upper limit to print natural numbers: "
read n
i=1
while [ $i -le $n ]
do 
  echo $i
  ((i++))
done
#end
