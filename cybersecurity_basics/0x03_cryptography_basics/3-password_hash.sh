#!/bin/bash
SALT=$(openssl rand -hex 16); echo -n "${SALT}${1}" | sha512sum | cut -d ' ' -f 1 > 3_hash.txt