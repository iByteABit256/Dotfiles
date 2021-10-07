#!/bin/sh
df -h / | awk 'FNR == 2 {print "SSD: "$5}'
