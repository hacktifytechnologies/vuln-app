# Walkthrough — Juice Shop Brute Force

## Objective
Obtain access by successfully brute-forcing or guessing valid credentials.

## Target
- Application: Juice Shop
- URL: `http://<TARGET-IP>:3005`
- Vulnerability: Weak Authentication
- Credentials: Challenge-specific account

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Open Juice Shop
Browse to `http://<TARGET-IP>:3005` and locate the login page.
## Step 2 — Identify the target account
Choose the intended user account for the lab, based on the challenge instructions or hints.
## Step 3 — Use a controlled brute-force approach
Attempt a small candidate set of passwords or use a tool like Burp Intruder with a targeted list.
## Step 4 — Authenticate successfully
Once a working credential pair is found, log in to the application.
## Step 5 — Complete the challenge
Record the credential pair and confirm authenticated access.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Credential Access
- Technique: Brute Force
- Technique ID: T1110
