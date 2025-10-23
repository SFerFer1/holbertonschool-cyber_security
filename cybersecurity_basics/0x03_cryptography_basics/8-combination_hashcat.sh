#!/bin/bash
hashcat -a 1 -m 1 $1 $2 --stdout 