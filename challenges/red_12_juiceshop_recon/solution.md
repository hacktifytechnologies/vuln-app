# Walkthrough — Juice Shop Recon

## Objective
Discover hidden routes, endpoints, or client-side references through enumeration.

## Target
- Application: Juice Shop
- URL: `http://<TARGET-IP>:3008`
- Vulnerability: Information Disclosure
- Credentials: No credentials required initially

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Open Juice Shop
Browse to `http://<TARGET-IP>:3008` and inspect the application normally.
## Step 2 — Perform route and content discovery
Use the browser, developer tools, and safe enumeration techniques to find hidden routes or static references.
## Step 3 — Inspect client-side files
Review JavaScript bundles, source maps if available, and visible responses for interesting endpoints.
## Step 4 — Validate discovered endpoints
Browse to or request the hidden route to confirm that it exists and is reachable.
## Step 5 — Complete the challenge
Record the hidden endpoint or route discovered during recon.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Reconnaissance
- Technique: Active Scanning
- Technique ID: T1595
