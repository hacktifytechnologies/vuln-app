#!/bin/bash
set -e

echo "[*] Setting up Juice Shop API Data Leak"

docker rm -f juiceshop-dataleak 2>/dev/null || true

docker run -d \
  --name juiceshop-dataleak \
  -p 3007:3000 \
  --restart unless-stopped \
  -e NODE_ENV=unsafe \
  hacktifytechnologies/lab-juice-shop:latest

sleep 15
echo "[+] Juice Shop API Data Leak deployed on port 3007"
