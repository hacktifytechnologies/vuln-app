#!/bin/bash
set -e

echo "[*] Setting up DVWA CSRF"

docker rm -f dvwa-csrf 2>/dev/null || true

docker run -d \
  --name dvwa-csrf \
  -p 8084:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-dvwa:latest

sleep 15
curl -s -c /tmp/dvwa_cookies.txt "http://localhost:8084/setup.php" > /dev/null || true
curl -s -b /tmp/dvwa_cookies.txt -X POST "http://localhost:8084/setup.php" -d "create_db=Create+%2F+Reset+Database" > /dev/null || true

echo "[+] DVWA CSRF deployed on port 8084"
