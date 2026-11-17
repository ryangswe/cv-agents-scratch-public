#!/bin/sh
# The scratch repo's "tests", run by the `test` job, which is the required check. A PR may edit
# this file; the phase 1 test checks what such an edit can reach from inside CI.
set -eu
if [ -n "${CANARY_REPO:-}" ]; then
  echo "repo canary: present"
else
  echo "repo canary: absent"
fi
echo "tests passed"
