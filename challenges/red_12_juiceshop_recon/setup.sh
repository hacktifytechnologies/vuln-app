#!/bin/bash
set -e

echo "[*] Setting up Juice Shop Recon"

docker rm -f juiceshop-recon 2>/dev/null || true

docker run -d \
  --name juiceshop-recon \
  -p 3008:3000 \
  --restart unless-stopped \
  -e NODE_ENV=unsafe \
  hacktifytechnologies/lab-juice-shop:latest

sleep 15
echo "[+] Juice Shop Recon deployed on port 3008"
