# Walkthrough — Juice Shop API Data Leak

## Objective
Extract sensitive information through an exposed or weakly protected API.

## Target
- Application: Juice Shop
- URL: `http://<TARGET-IP>:3007`
- Vulnerability: API Exposure
- Credentials: Challenge-specific access path

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Open Juice Shop
Browse to `http://<TARGET-IP>:3007` and identify API calls using browser developer tools or an interception proxy.
## Step 2 — Locate the vulnerable API endpoint
Observe traffic for endpoints returning profile, order, or internal data.
## Step 3 — Call the API directly
Replay the request or browse directly to the endpoint to inspect the returned JSON data.
## Step 4 — Capture the exposed information
Document the sensitive fields or records that should not be publicly accessible.
## Step 5 — Complete the challenge
Provide the endpoint and the sensitive data that was leaked.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Collection
- Technique: Data from Local System
- Technique ID: T1005
