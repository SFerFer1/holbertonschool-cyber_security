#!/bin/bash
grep -oE '\w+' /var/log/auth.log | sort | uniq -c | sort -nr