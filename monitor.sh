#!/bin/bash
echo "=== CPU温度 ==="
sensors 2>/dev/null | grep -i "Core" || echo "sensorsコマンド未インストール"

echo -e "\n=== メモリ使用量 ==="
free -h

echo -e "\n=== ディスク使用量 ==="
df -h -t ext4 -t xfs -t btrfs

echo -e "\n=== プロセス上位5件 (CPU使用率順) ==="
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 6

echo -e "\n=== ネットワーク通信量 ==="
cat /proc/net/dev | grep -v "lo:" | column -t
