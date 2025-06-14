#!/bin/bash


for i in {1..5}; do
    echo "Iteration $i"
done


echo "Enter numbers separated by space (e.g., 1 2 3 6):"
read -a nums


for num in "${nums[@]}"; do

    
    if ! [[ $num =~ ^[0-9]+$ ]]; then
        echo "Error: '$num' is not a valid number"
        continue
    fi

    
    if (( num % 2 == 0 )); then
        echo "$num is Even"
    else
        echo "$num is Odd"
    fi
done
