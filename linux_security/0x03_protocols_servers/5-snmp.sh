#!/bin/bash
TARGET_IP="$1"
snmp-check -c public $TARGET_IP 2>&1 | grep "System Description"
echo "bash"
:
: