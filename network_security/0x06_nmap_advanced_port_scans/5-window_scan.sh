#!/bin/bash
sudo nmap -sW -p  -exclude-ports 20-24,29-30 $1