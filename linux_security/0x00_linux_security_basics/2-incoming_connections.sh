#!/bin/bash
iptables -A INPUT -P tcp -dport 80 -j ACCEPT