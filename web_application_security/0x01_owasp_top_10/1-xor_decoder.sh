#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Uso: $0 <cadena_ofuscada>" >&2
    exit 1
fi

input="${1#\{xor\}}"


decoded=$(printf '%s' "$input" | base64 -d -w 0)


key=95


for (( i=0; i<${#decoded}; i++ )); do
    
    byte_value=$(printf '%d' "'${decoded:$i:1}")

    
    xor_result=$(( byte_value ^ key ))


    printf '\\x%02x' "$xor_result"
done


echo