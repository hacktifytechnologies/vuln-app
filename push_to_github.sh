#!/bin/bash
set -e

REPO_NAME="vuln-app"
GITHUB_ORG="hacktifytechnologies"

cd "$(dirname "$0")"
git init
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/${GITHUB_ORG}/${REPO_NAME}.git
git add .
git commit -m "Add 12 red range challenges with CALDERA YAML, setup scripts, walkthroughs, and assessments" || true
git push -u origin main
