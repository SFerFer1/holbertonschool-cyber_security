#!/bin/bash
sudo iptables -A INPUT -P tcp -dport 80 -j ACCEPT