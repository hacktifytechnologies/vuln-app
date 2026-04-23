#!/bin/bash
set -e

echo "[*] Setting up bWAPP RFI"

docker rm -f bwapp-rfi 2>/dev/null || true

docker run -d \
  --name bwapp-rfi \
  -p 8086:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-bwapp:latest

sleep 15
curl -s "http://localhost:8086/install.php?install=yes" > /dev/null || true

echo "[+] bWAPP RFI deployed on port 8086"
