#!/bin/sh

myping=$(ping -c 1 www.archlinux.org | awk 'FNR == 2 {print $8}' | cut -d'=' -f2)
echo "Ping = "$myping" ms"
