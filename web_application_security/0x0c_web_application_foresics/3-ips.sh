#!/bin/bash
grep -RoiE "Accepted password" /var/log/ | awk '{print $NF}'| sort -u| wc -l