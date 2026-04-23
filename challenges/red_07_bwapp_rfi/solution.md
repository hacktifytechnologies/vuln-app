# Walkthrough — bWAPP RFI

## Objective
Execute remote code by abusing file inclusion behavior.

## Target
- Application: bWAPP
- URL: `http://<TARGET-IP>:8086`
- Vulnerability: Remote File Inclusion
- Credentials: bee / bug

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Initialize and log in to bWAPP
Open `http://<TARGET-IP>:8086`, confirm installation, and sign in with `bee / bug`.
## Step 2 — Open the RFI vulnerability page
Navigate to the **Remote File Inclusion** exercise.
## Step 3 — Host or reference a remote script
Prepare a remote file that contains server-side code or a visible proof string.
## Step 4 — Submit the remote file reference
Supply the remote URL to the vulnerable include parameter and submit the request.
## Step 5 — Complete the challenge
Confirm that the remote content was included and executed by the server.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Execution
- Technique: Command and Scripting Interpreter
- Technique ID: T1059
