#!/bin/bash
grep -i "accepted" auth.log | awk '{print $9}' | sort -u