#!/bin/bash
#list of vgs and lvs
count=0
for i in `vgs --noheading -o vg_name`
 do
  echo  $i
  ((count++))
 done
echo "you have $count number of vgs" 
count=0
for i in `lvs --noheading -o lv_name`
 do
  echo $i
  ((count++))
 done
echo "you have $count number of lvs"

#end
