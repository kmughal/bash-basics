#!/bin/bash
#chmod +x ./string.sh
# simple replace example
i=pic.txt
echo $i
echo ${i/txt/png}
rm {a..c}.txt
touch {a..c}.txt

if [ 1 == 1 ]; then
  echo "hello"
else 
  echo "no same"
fi

is_numb(){
  declare -r num_patt='^[0-9]+$'
  echo "you entered :$1"
  if [[ $1 =~ $num_patt ]]; then
   echo "capture[$1]: ${BASH_REMATCH[$1]}"
    echo "is number"
  else 
    echo "is not number"
  fi
}

is_numb 4
is_numb 4a