#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Uso: $0 <cadena_ofuscada>" >&2
    exit 1
fi

input="${1#\{xor\}}"
key=95

# Decode the Base64 input and pipe it to a loop that reads byte by byte.
# The `while` loop with `read -n 1` is the safest way to handle binary data.
printf '%s' "$input" | base64 -d -w 0 | while IFS= read -r -n 1 byte; do
    if [ -n "$byte" ]; then
        # Get the ASCII value of the current character.
        byte_value=$(printf '%d' "'$byte")
        
        # Perform the XOR operation.
        xor_result=$(( byte_value ^ key ))
        
        # Print the resulting character as a hexadecimal escape sequence.
        printf '\\x%02x' "$xor_result"
    fi
done

# Add a newline at the end for clean output, which is often expected.
echo