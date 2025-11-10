#!/bin/bash
sudo nmap --scanflags FSRPAUEC $1 --host-timeout 1000 -oN custom_scan.txt-p $2 