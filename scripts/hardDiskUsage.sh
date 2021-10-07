#!/bin/sh
df -h /home | awk 'FNR == 2 {print "HDD: "$5}'
