# Walkthrough — DVWA CSRF

## Objective
Trigger an unauthorized state-changing action using the victim's authenticated session.

## Target
- Application: DVWA
- URL: `http://<TARGET-IP>:8084`
- Vulnerability: Cross-Site Request Forgery
- Credentials: admin / password

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Login to DVWA
Browse to `http://<TARGET-IP>:8084`, log in with `admin / password`, and set **DVWA Security** to **Low**.
## Step 2 — Open the CSRF module
Navigate to the **CSRF** page and observe the password-change function.
## Step 3 — Create a forged request
Build an HTML page or crafted URL that submits the password-change parameters without a valid anti-CSRF control.
## Step 4 — Trigger the request in the victim session
While the authenticated session is active, load the forged page or URL.
## Step 5 — Complete the challenge
Confirm that the password change or equivalent state-changing action occurred.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Initial Access
- Technique: Valid Accounts
- Technique ID: T1078
