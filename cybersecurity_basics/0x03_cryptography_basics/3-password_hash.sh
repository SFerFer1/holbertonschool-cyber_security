#!/bin/bash
SALT=$(openssl rand -hex 16); COMBINED_STRING="${SALT}${1}"; echo -n "${COMBINED_STRING}" | sha512sum > 3_hash.txt