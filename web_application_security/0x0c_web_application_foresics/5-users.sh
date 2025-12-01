#!/bin/bash
grep -Eo "for [A-Za-z0-9_-]+" auth.log | awk '{print $2}' | sort -u | paste -sd,