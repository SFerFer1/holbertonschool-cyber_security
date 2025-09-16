#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Uso: $0 <cadena_ofuscada>" >&2
    exit 1
fi

input="${1#\{xor\}}"

key=95

hex_decoded=$(printf '%s' "$input" | base64 -d -w 0 | xxd -p -c 256)

for (( i=0; i<${#hex_decoded}; i+=2 )); do
    hex_byte="${hex_decoded:$i:2}"
    
    byte_value=$((16#$hex_byte))
    
    xor_result=$(( byte_value ^ key ))
    
    printf '\\x%02x' "$xor_result"
done

echo