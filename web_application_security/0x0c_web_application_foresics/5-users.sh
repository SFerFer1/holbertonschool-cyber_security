#!/bin/bash
grep -Ei "adduser" auth.log | awk '{for(i=1;i<=NF;i++) if($i ~ /name=/) print $i}' | sed 's/name=//'
