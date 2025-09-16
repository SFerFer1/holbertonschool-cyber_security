#!/bin/bash
hash=${1#"{xor}"}
decoded=$(echo "$hash" | base64 --decode)
original=$(echo -n "$decoded" | perl -pe 's/(.)/chr(ord($1)^0xAA)/ge')
echo "$original"