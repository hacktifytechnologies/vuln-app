# Walkthrough — bWAPP XXE

## Objective
Read sensitive server-side files using an external entity declaration.

## Target
- Application: bWAPP
- URL: `http://<TARGET-IP>:8085`
- Vulnerability: XML External Entity
- Credentials: bee / bug

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Initialize and log in to bWAPP
Open `http://<TARGET-IP>:8085`, ensure installation is complete, then sign in with `bee / bug`.
## Step 2 — Navigate to the XXE exercise
Locate the XML External Entity vulnerability page in the vulnerability list.
## Step 3 — Prepare a malicious XML payload
Define an external entity that references a local file such as `/etc/passwd`.
## Step 4 — Submit the XML document
Send the crafted XML through the vulnerable form and review the response.
## Step 5 — Complete the challenge
Capture the file contents or other sensitive output returned by the parser.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Discovery
- Technique: File and Directory Discovery
- Technique ID: T1083
