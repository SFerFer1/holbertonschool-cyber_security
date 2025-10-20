#!/bin/bash
openssl rand -hex 16 | sha512sum > 3_hash.txt