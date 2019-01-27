#!/bin/bash
#chmod+x ./functions.sh


function displaydate() {
  echo "show is called $(Date)"
};

displaydate
# this will output result in file.
displaydate > in-file

cal() {
  
 case $1 in
  +)
     return $(($2 + $3));;
 esac
}

starts_with_lower_case() {
  # [[ $1 == [a-z]* ]];
  # return $?
  [[ $1 == [a-z]* ]];
}

cal + 4 6
echo $?

if starts_with_lower_case bCD; then 
  echo "starts with small char"; 
else 
  echo " doesn't starts with small charc"
fi

# declare -a v="$(du ..)"
# for i in $v;do
#   echo $i
# done

#du command result is redirected to stats file
du .. > stats