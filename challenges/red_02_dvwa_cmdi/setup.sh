#!/bin/bash
set -e

echo "[*] Setting up DVWA Command Injection"

docker rm -f dvwa-cmdi 2>/dev/null || true

docker run -d \
  --name dvwa-cmdi \
  -p 8081:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-dvwa:latest

sleep 15
curl -s -c /tmp/dvwa_cookies.txt "http://localhost:8081/setup.php" > /dev/null || true
curl -s -b /tmp/dvwa_cookies.txt -X POST "http://localhost:8081/setup.php" -d "create_db=Create+%2F+Reset+Database" > /dev/null || true

echo "[+] DVWA Command Injection deployed on port 8081"
