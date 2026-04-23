#!/bin/bash
set -e

echo "[*] Setting up bWAPP XXE"

docker rm -f bwapp-xxe 2>/dev/null || true

docker run -d \
  --name bwapp-xxe \
  -p 8085:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-bwapp:latest

sleep 15
curl -s "http://localhost:8085/install.php?install=yes" > /dev/null || true

echo "[+] bWAPP XXE deployed on port 8085"
