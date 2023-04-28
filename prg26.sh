#!/bin/bash
#print natural numbers for given upper limit
read -p "Enter the upper limit to print natural numbers: " n
for ((i=1;i<=n;i++))
do  
  echo $i
done
