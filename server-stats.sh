#!/bin/bash
echo "Up time"
uptime -p
# Logged-in users
echo "Logged-in users:"
who

echo ""
# Failed login attempts
echo "Failed login attempts:"
sudo lastb | head -n 5
# CPU kullanımı
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
printf "Total CPU Usage      : %.2f%%\n" "$CPU_USAGE"

# Bellek bilgileri
meminfo=$(free -m | awk 'NR==2')
memtotal=$(echo "$meminfo" | awk '{print $2}')
memused=$(echo "$meminfo" | awk '{print $3}')
memfree=$(echo "$meminfo" | awk '{print $4}')

used_percent=$(awk "BEGIN {printf \"%.2f\", ($memused / $memtotal) * 100}")
free_percent=$(awk "BEGIN {printf \"%.2f\", ($memfree / $memtotal) * 100}")

echo "Total Memory Usage   : ${used_percent}%"
echo "Free Memory          : ${memfree} MB (${free_percent}%)"
echo "Used Memory          : ${memused} MB (${used_percent}%)"

fdisk=$(df -BG | grep '^/dev/' | grep -v '/boot$' | awk '{ft += $2} END {print ft}')

udisk=$(df -BM | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3} END {print ut}')

pdisk=$(df -BM | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3} {ft+= $2} END {printf("%d"), ut/ft*100}')
	
echo "Disk Usage: $udisk/${fdisk}Gb ($pdisk%)"

#!/bin/bash

echo "Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

echo ""
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6

