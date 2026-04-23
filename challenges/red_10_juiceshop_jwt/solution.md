# Walkthrough — Juice Shop JWT Misconfig

## Objective
Forge or tamper with a token to gain elevated access.

## Target
- Application: Juice Shop
- URL: `http://<TARGET-IP>:3006`
- Vulnerability: JWT Forgery
- Credentials: Application account required

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Open Juice Shop
Browse to `http://<TARGET-IP>:3006` and log in with a normal user account if needed for the lab.
## Step 2 — Capture the token
Use browser storage or an interception proxy to retrieve the JWT used by the application.
## Step 3 — Inspect the claims and algorithm
Decode the token and identify the fields that control role or privilege.
## Step 4 — Forge or modify the token
Adjust the token based on the intended weakness in the lab and replay it to the application.
## Step 5 — Complete the challenge
Confirm that higher-privileged functionality becomes available with the forged token.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Privilege Escalation
- Technique: Valid Accounts
- Technique ID: T1078
