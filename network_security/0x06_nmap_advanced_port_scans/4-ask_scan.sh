#!/bin/bash
sudo nmap -p $2 -sW -sA -reason -host-timeout 1000 -p20-24,29-30 $1