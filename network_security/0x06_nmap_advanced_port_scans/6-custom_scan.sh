#!/bin/bash
sudo nmap -p $2 --scanflags FSRPAUEC $1 --host-timeout 1000 -oN custom_scan.txt-p >/dev/null 