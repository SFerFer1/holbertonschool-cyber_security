#!/bin/bash
grep -Ei "failed|invalid|authentication|accepted" /var/log/auth.log | awk '{print $NF}' | sort -u