#!/bin/bash
openssl rand -hex 16 | sha512sum | cut -d ' ' -f 1 > 3_hash.txt