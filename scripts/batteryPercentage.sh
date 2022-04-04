#bin/sh

pct=$(cat /sys/class/power_supply/BAT0/capacity)
printf "🔋 $pct%%"

