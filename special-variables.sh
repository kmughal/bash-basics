#!/bin/bash
echo $0
echo $1
echo "all arg: $@"
echo "all* arg: $*"
echo "total args count: $#"

# "$@" make sure string values with commas are regarded.
for a in "$@"; do
  echo "arg:$a"
done