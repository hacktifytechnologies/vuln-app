# Walkthrough — bWAPP IDOR

## Objective
Access data that belongs to another user by manipulating a direct object reference.

## Target
- Application: bWAPP
- URL: `http://<TARGET-IP>:8087`
- Vulnerability: Insecure Direct Object Reference
- Credentials: bee / bug

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Initialize and log in to bWAPP
Access `http://<TARGET-IP>:8087`, complete installation if needed, and sign in with `bee / bug`.
## Step 2 — Locate the IDOR exercise
Navigate to the insecure direct object reference vulnerability page.
## Step 3 — Observe the direct reference
Identify the numeric or predictable object identifier used in the request.
## Step 4 — Modify the identifier
Change the object reference to another valid value and resend the request.
## Step 5 — Complete the challenge
Verify that unauthorized data from another object or user is returned.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Privilege Escalation
- Technique: Valid Accounts
- Technique ID: T1078
