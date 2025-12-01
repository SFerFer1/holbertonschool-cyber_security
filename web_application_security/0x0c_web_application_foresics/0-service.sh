#!/bin/bash
grep -i "ssh" /var/log/auth.log | grep -oE '\w+' | sort | uniq -c | sort -nr
