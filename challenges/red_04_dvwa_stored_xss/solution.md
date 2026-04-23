# Walkthrough — DVWA Stored XSS

## Objective
Store a malicious script that executes when the page is viewed.

## Target
- Application: DVWA
- URL: `http://<TARGET-IP>:8083`
- Vulnerability: Stored XSS
- Credentials: admin / password

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Login to DVWA
Open `http://<TARGET-IP>:8083`, sign in with `admin / password`, and set **DVWA Security** to **Low**.
## Step 2 — Open the XSS (Stored) page
Navigate to the **XSS (Stored)** module.
## Step 3 — Submit a JavaScript payload
Use a simple payload such as `<script>alert(1)</script>` in the message or name field.
## Step 4 — Trigger the stored payload
Reload the page or revisit the vulnerable page to trigger the stored script.
## Step 5 — Complete the challenge
Capture the exact field used and the behavior observed when the payload executes.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Execution
- Technique: Exploitation for Client Execution
- Technique ID: T1203
