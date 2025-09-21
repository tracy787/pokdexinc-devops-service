#!/usr/bin/env bash
# scripts/healthcheck.sh
# Returns 0 if app responds to a minimal check (here we just check env)
if [ -z "$API_KEY" ]; then
  echo "API_KEY missing"
  exit 2
fi

echo "OK - API_KEY present"
exit 0
