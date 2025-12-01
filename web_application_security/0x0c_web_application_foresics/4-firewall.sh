#!/bin/bash
grep -Ei "ufw allow|iptables -A" auth.log | wc -l