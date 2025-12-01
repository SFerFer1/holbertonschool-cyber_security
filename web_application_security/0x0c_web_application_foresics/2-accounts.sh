#!/bin/bash
grep -i "Accepted password" auth.log | awk '{print $9}' | tail -n 1