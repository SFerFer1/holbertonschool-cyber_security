#!/bin/bash
grep -i "Accepted password" auth.log | sed -n 's/.*for \([^ ]*\).*/\1/p'