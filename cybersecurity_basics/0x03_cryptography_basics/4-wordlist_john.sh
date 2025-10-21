#!/bin/bash
john --format=raw-md5 --wordlist=rockyou.txt "$1"
john --show --format=raw-md5 "$1" > 4-password.txt