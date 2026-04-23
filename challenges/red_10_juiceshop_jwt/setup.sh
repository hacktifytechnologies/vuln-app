#!/bin/bash
set -e

echo "[*] Setting up Juice Shop JWT Misconfig"

docker rm -f juiceshop-jwt 2>/dev/null || true

docker run -d \
  --name juiceshop-jwt \
  -p 3006:3000 \
  --restart unless-stopped \
  -e NODE_ENV=unsafe \
  hacktifytechnologies/lab-juice-shop:latest

sleep 15
echo "[+] Juice Shop JWT Misconfig deployed on port 3006"
