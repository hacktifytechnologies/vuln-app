#!/bin/bash
set -e

echo "[*] Setting up DVWA SQLi Basic"

docker rm -f dvwa-sqli-basic 2>/dev/null || true

docker run -d \
  --name dvwa-sqli-basic \
  -p 8080:80 \
  --restart unless-stopped \
  hacktifytechnologies/lab-dvwa:latest

sleep 15
curl -s -c /tmp/dvwa_cookies.txt "http://localhost:8080/setup.php" > /dev/null || true
curl -s -b /tmp/dvwa_cookies.txt -X POST "http://localhost:8080/setup.php" -d "create_db=Create+%2F+Reset+Database" > /dev/null || true

echo "[+] DVWA SQLi Basic deployed on port 8080"
