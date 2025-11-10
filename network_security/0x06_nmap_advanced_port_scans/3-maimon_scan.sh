#!/bin/bash
sudo nmap -p ftp,ssh,telnet,http,https -sM $1

