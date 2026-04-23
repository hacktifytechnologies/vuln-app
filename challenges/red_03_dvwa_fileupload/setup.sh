#!/bin/bash
set -e

echo "[*] Setting up DVWA File Upload"

docker rm -f dvwa-fileupload 2>/dev/null || true

docker run -d \
  --name dvwa-fileupload \
  -p 8082:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-dvwa:latest

sleep 15
curl -s -c /tmp/dvwa_cookies.txt "http://localhost:8082/setup.php" > /dev/null || true
curl -s -b /tmp/dvwa_cookies.txt -X POST "http://localhost:8082/setup.php" -d "create_db=Create+%2F+Reset+Database" > /dev/null || true

echo "[+] DVWA File Upload deployed on port 8082"
