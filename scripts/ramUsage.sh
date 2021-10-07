#!/bin/sh

free -m | awk 'FNR == 2 {printf "💾 %.2F%", 100*$3/$2}'

