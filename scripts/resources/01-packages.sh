#!/bin/bash
mkdir -p ~/.apps
mkdir -p ~/.apps/HyprSrc

cd packages
# Loop through numbers from 1 to 8
for i in {0..8}; do
    # Format the number with leading zero if needed
    num=$(printf "%02d" $i)
    # Execute the corresponding script
    ./"$num"-*.sh
done

