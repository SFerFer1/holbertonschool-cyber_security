#!/bin/bash
grep -i "Accepted" auth.log | awk '{print $4}' | sort -u