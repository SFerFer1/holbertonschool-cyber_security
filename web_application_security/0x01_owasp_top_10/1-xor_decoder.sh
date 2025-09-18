#!/bin/bash

# --- Check for arguments ---
if [ -z "$1" ]; then
    echo "Usage: $0 <encoded_string>"
    exit 1
fi

# --- Remove the {xor} prefix ---
# This line uses string substitution to remove the prefix from the input.
encoded_string_without_prefix="${1#\{xor\}}"

# --- Decode the base64 encoded string ---
# Now, we pass the cleaned string to the base64 command.
decoded_bytes=$(echo "$encoded_string_without_prefix" | base64 -d)

# --- Define the XOR key ---
xor_key=$'\x5f'

# --- Perform the XOR operation ---
result=$(echo -n "$decoded_bytes" | xxd -p | sed 's/../& /g' | awk -v key="$xor_key" '{
    for (i=1; i<=NF; i++) {
        val = strtonum("0x" $i);
        xor_val = val ^ strtonum(sprintf("0x%x", key));
        printf "%02x", xor_val;
    }
    printf "\n";
}' | xxd -r -p)

# --- Output the result ---
echo -n "$result"
echo "  la key es 0x5F"