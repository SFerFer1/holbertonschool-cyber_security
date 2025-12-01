#!/bin/bash
grep -i "Accepted password" auth.log | awk '{print $(NF)}' | sort -u | wc -l