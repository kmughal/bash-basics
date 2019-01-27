#!/bin/bash
while getopts ":a:b:c" opts; do
case $opts in
  a) 
    echo "-a is provided and value is $OPTARG";;
  b)
    echo "b" ;;
  :)
    echo "value was required" ;;
  \?)
    exit 1 ;;
esac 
done

# OPTARG will have the value and OPTIND will have the index of next command
# -- will discontinue getopts.
# : putting at start will enable you to handle missing values .e.g. ./getopts.sh -a running this will error out telling you to provide missing args.