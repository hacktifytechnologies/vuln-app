#!/bin/bash
set -e

echo "[*] Setting up Juice Shop Brute Force"

docker rm -f juiceshop-bruteforce 2>/dev/null || true

docker run -d \
  --name juiceshop-bruteforce \
  -p 3005:3000 \
  --restart unless-stopped \
  -e NODE_ENV=unsafe \
  hacktifytechnologies/lab-juice-shop:latest

sleep 15
echo "[+] Juice Shop Brute Force deployed on port 3005"
