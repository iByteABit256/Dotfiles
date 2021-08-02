#!/bin/sh

free -m | awk 'FNR == 2 {printf "RAM = %.2F%", $2/$3}' 
