#!/bin/bash
export item="From SCRIPT1 $(Date)"
echo "$item before script2"
./script2.sh
echo "$item before script2"

# chmod +x ./script1.sh ./script2.sh