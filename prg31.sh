#!/bin/bash
#create users.. using while loop
#
while :
 do
 read -p "enter username to add(use 'stop' to exit):" u1
 if [ $u1 = stop ]
 then
   break
 else
   #search if the user already exists
   grep -w ^$u1 /etc/passwd > /dev/null 2>&1
 if [ $? != 0 ] #inner if begins
 then 
  useradd $u1
  #set the password same as username
  echo "$u1" | passwd --stdin $u1 > /dev/null 2>$1
 else
  echo "cant create user.. $u1 user exists.. continue with next user"
 fi
fi
done
