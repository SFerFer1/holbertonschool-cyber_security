#!/bin/bash
sudo nmap --scanflags FSRPAUEC $1 --host-timeout 1000 -p $2 