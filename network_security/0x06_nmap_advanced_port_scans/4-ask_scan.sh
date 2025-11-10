#!/bin/bash
sudo nmap -sW -sA -reason -host-timeout -p20-24,29-30 $1