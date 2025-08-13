#!/bin/bash
whois "$1" | grep -iE "^Registrant|^Admin|^Tech"