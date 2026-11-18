#!/bin/sh
# Phase 1, PR C: what an edit to the script CI runs can reach. It prints names, never values.
set -eu
if [ -n "${CANARY_REPO:-}" ]; then echo "repo canary: present"; else echo "repo canary: absent"; fi
echo "credential-like variables: $(env | cut -d= -f1 | grep -E 'TOKEN|SECRET|KEY|CANARY|PASSWORD|ACTIONS_' | sort | tr '\n' ' ')"
if git config --get-regexp 'http\..*extraheader' >/dev/null 2>&1; then echo "git credentials: present"; else echo "git credentials: absent"; fi
echo "tests fail on purpose"
exit 1
