#!/bin/bash
set -e

echo "[*] Setting up DVWA Stored XSS"

docker rm -f dvwa-xss 2>/dev/null || true

docker run -d \
  --name dvwa-xss \
  -p 8083:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-dvwa:latest

sleep 15
curl -s -c /tmp/dvwa_cookies.txt "http://localhost:8083/setup.php" > /dev/null || true
curl -s -b /tmp/dvwa_cookies.txt -X POST "http://localhost:8083/setup.php" -d "create_db=Create+%2F+Reset+Database" > /dev/null || true

echo "[+] DVWA Stored XSS deployed on port 8083"
