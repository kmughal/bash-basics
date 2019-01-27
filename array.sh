#!/bin/bash
declare -a x=(khurram shahzad mughal 1 test ok)
x[0]=khurram
x[1]=shahzad
echo "First item : ${x[0]}"
echo "all items : ${x[*]}"
echo "total items:${#x[@]} , indices: ${!x[@]}"
echo "array description: $(declare -p x)"