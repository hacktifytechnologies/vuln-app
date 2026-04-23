# Walkthrough — DVWA SQLi Basic

## Objective
Extract unauthorized user data via the SQL Injection module.

## Target
- Application: DVWA
- URL: `http://<TARGET-IP>:8080`
- Vulnerability: SQL Injection
- Credentials: admin / password

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Login to DVWA
Browse to `http://<TARGET-IP>:8080`, sign in with `admin / password`, then set **DVWA Security** to **Low**.
## Step 2 — Open the SQL Injection module
Navigate to the **SQL Injection** page from the left menu.
## Step 3 — Send a simple boolean-based payload
In the **User ID** field, submit `1' OR '1'='1` and observe that multiple records are returned.
## Step 4 — Confirm the impact
The page should disclose data that is not limited to a single intended record.
## Step 5 — Complete the challenge
Document the payload and the unauthorized data returned by the application.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Initial Access
- Technique: Exploit Public-Facing Application
- Technique ID: T1190
