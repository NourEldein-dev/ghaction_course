#!/usr/bin/env bashh
set -euo pipefail

APP_PATH="./src/app.js"

ACTUAL=$(node -e "const greet = require('$APP_PATH'); process.stdout.write(greet('Nour'));")
EXPECTED="Hello, Nour!"

if [ "$ACTUAL" = "$EXPECTED" ]; then
  echo "PASS: got '$ACTUAL'"
  exit 0
else
  echo "FAIL: expected '$EXPECTED', but got '$ACTUAL'" >&2
  exit 1
fi