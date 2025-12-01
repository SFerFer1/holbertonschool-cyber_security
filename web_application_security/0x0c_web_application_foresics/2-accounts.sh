#!/bin/bash
grep -Ei "failed|invalid|authentication|accepted" auth.log | awk '{print $NF}' | sort -u