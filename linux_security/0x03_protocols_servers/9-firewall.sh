#!/bin/bash
iptables -P INPUT DROP
iptables -A INPUT -tcp --dport 22 -j ACCEPT