#!/bin/bash
grep -Ei "useradd|adduser" auth.log | awk '{print $NF}'