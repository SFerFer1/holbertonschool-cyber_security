#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 {xor}BASE64_STRING"
    exit 1
fi


input=${1#"{xor}"}

key=0x5F


decoded=$(echo "$input" | base64 --decode | od -An -t u1)

for byte in $decoded; do
    printf "\\$(printf '%03o' $((byte ^ key)))"
done

echo
