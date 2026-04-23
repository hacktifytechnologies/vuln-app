#!/bin/bash
set -e

echo "[*] Setting up bWAPP IDOR"

docker rm -f bwapp-idor 2>/dev/null || true

docker run -d \
  --name bwapp-idor \
  -p 8087:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-bwapp:latest

sleep 15
curl -s "http://localhost:8087/install.php?install=yes" > /dev/null || true

echo "[+] bWAPP IDOR deployed on port 8087"
