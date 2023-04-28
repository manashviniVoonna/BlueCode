#!/bin/bash
#sending file to remote server

read -p "enter remote IP address: " IP
read -p "enter directory name: " dir
for i in `ls /root/*.txt`   
 do
  scp $i $IP:$dir
 done
#end 
