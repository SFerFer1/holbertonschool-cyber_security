#!/bin/bash
grep "$(awk '{print $1}' logs.txt | sort | uniq -c | sort -nr | head -1 | awk '{print $2}')" logs.txt \
| awk -F'"' '{print $4}' \
| sort | uniq -c | sort -nr | head -1 | awk '{print $2}'