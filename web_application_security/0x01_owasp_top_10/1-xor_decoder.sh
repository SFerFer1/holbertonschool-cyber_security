#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Uso: $0 <cadena_ofuscada>" >&2
    exit 1
fi

input="${1#\{xor\}}"
key=95


printf '%s' "$input" | base64 -d -w 0 | while IFS= read -r -n 1 byte; do

    byte_value=$(printf '%d' "'$byte")
    
 
    xor_result=$(( byte_value ^ key ))
    

    printf '\\x%02x' "$xor_result"
done

echo