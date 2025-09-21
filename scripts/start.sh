#!/usr/bin/env bash
# scripts/start.sh
set -e
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

echo "Starting Pokｅdex DevOps Service (dev)..."
python -u app/main.py
