#!/bin/sh
df -h / | awk 'FNR == 2 {print "Disk Usage: "$5}'
