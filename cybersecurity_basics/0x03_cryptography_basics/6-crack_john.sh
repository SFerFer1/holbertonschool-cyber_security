#!/bin/bash
john "$1"; john --show "$1" | awk -F: '{print $2}' | tail -n 1 > 6-password.txt