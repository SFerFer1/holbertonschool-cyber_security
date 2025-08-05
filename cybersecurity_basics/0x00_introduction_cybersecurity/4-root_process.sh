#!/bin/bash
ps -u | grep "^$1 " | grep -v " 0 "
