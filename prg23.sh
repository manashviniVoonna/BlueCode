#!/bin/bash
count=0
for i in `ls /dev/sd?`
do
  echo $i
  ((count++))
done
echo "you have $count block devices in this system"
#end
