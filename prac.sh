#!/bin/bash
read -p "enter value:" value
echo "You entered $value"
read -p "enter a value to test case statement:" casevaluetest
case $casevaluetest in
    khurram)
        echo "you entered khurram";;
    shahzad)
        echo "you entered shahzad";;
    *)
        echo "invalid entry";;
esac

output="result"
if [ -e $outputfile ]; then echo "exists so deleting file"; rm $output; else echo "not found"; fi
#read -p "enter a value  :"  > $output

cat $output

read -p "enter"
echo $REPLY > $output


declare -ir randval=$(($RANDOM % 100))
declare -i rep=0

echo $randval
until ((rep == randval)); do
    read -p "enter value:" rep
    if ((rep > randval)); then
        echo "higher"
    elif ((rep < randval)); then
        echo "lower"
    else 
        echo "found!"
    fi
done
exit 0