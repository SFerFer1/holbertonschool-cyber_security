#!/bin/bash
grep -E 'GET|POST|PUT|DELETE' logs.txt |sort | uniq -c | sort -nr | head -1| awk '{print $2}' 
