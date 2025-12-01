#!/bin/bash
grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" auth.log | sort -u | wc -l
