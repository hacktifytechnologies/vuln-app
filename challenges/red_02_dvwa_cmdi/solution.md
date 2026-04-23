# Walkthrough — DVWA Command Injection

## Objective
Execute operating system commands through the vulnerable input.

## Target
- Application: DVWA
- URL: `http://<TARGET-IP>:8081`
- Vulnerability: Command Injection
- Credentials: admin / password

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Login to DVWA
Browse to `http://<TARGET-IP>:8081`, sign in with `admin / password`, then set **DVWA Security** to **Low**.
## Step 2 — Open the Command Injection module
Navigate to the **Command Injection** page.
## Step 3 — Inject a separator-based payload
Submit a value such as `127.0.0.1 && whoami` or `127.0.0.1; id` depending on what works in the target environment.
## Step 4 — Review the output
The response should include both the ping result and the output of the injected system command.
## Step 5 — Complete the challenge
Capture the exact command used and the proof of command execution.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Execution
- Technique: Command and Scripting Interpreter
- Technique ID: T1059
