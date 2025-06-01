
# 🖥️ Server Performance Stats

A Bash script to analyze and display key server performance metrics on a Linux system.

## 📌 Overview

This project provides a simple CLI tool that outputs real-time server statistics, such as CPU and memory usage, process information, and user activity. It is especially useful for beginners learning Linux administration or DevOps practices.

## ✅ Features

The script provides:

- 🧠 **Total CPU Usage**
- 🧠 **Total Memory Usage (Used, Free, and Percent)**
- 📊 **Top 5 Processes by CPU Usage**
- 📊 **Top 5 Processes by Memory Usage**
- 👤 **Logged-in Users**
- 🔐 **Failed Login Attempts** (requires `sudo`)

## 🚀 Usage

1. **Give executable permission:**
   ```bash
   chmod +x server-stats.sh
   ```

2. **Run the script:**
   ```bash
   ./server-stats.sh
   ```

## 📥 Sample Output

```
Total CPU Usage: 13.25%
Total memory usage = 47.32%

Free memory percentage: 52.68%

Top 5 Processes by CPU Usage:
  PID COMMAND         %CPU %MEM
 1234 firefox         12.1  4.5
 4567 code             7.3  2.1
 ...

Top 5 Processes by Memory Usage:
  PID COMMAND         %CPU %MEM
 1234 firefox         12.1  4.5
 8910 chrome           5.2  6.3
 ...

Logged-in users:
samet   tty1    2025-06-01 09:32

Failed login attempts:
samet   ssh     2025-05-30 16:41
```

> ℹ️ *If you see a `Permission denied` for failed login attempts, run the script using `sudo` or remove that section.*

## ⚙️ Dependencies

This script uses standard Linux utilities:
- `top`
- `free`
- `awk`
- `ps`
- `grep`
- `who`
- `lastb`
- `journalctl` (optional fallback)

Tested on:
- Ubuntu
- Arch Linux
- Debian
---

Happy Monitoring! 📡

## 🔗 Project Source

This project is part of the [Server Performance Stats](https://roadmap.sh/projects/server-stats) on roadmap.sh.
