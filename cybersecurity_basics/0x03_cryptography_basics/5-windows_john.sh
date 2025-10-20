#!/bin/bash
john "$1"; john --show "$1" --format=NT | awk -F: '{print $2}' | tail -n 1 > 5-password.txt