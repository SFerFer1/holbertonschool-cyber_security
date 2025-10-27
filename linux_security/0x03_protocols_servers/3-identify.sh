#!/bin/bash
sudo lynis audit system | grep -E 'Package|Vulnerable|Update'