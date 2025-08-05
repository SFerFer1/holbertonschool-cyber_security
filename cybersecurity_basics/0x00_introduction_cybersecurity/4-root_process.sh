#!/bin/bash
ps -u "$1" user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,cmd | grep -v "0" 