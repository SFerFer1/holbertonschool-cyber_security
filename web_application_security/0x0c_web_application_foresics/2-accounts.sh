#!/bin/bash
grep -Ei "failed|invalid|authentication|accepted" /var/log/| awk '{print $NF}' | sort -u