#!/bin/bash
SALT=$(openssl rand -hex 16)
a="${openssl rand -hex 16}${1}"
echo -n "${a}" | sha512sum  > 3_hash.txt