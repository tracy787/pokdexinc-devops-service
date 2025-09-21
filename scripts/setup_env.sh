#!/usr/bin/env bash
# scripts/setup_env.sh
# Usage: ./scripts/setup_env.sh
set -e

# copy env example if not exists
if [ ! -f .env ]; then
  cp .env.example .env
  echo "Copied .env.example -> .env (edit .env with real values for local dev)"
else
  echo ".env already exists"
fi

# create virtualenv and install deps
if [ ! -d .venv ]; then
  python -m venv .venv
  echo "Virtualenv created at .venv"
fi

# activate and install (POSIX)
. .venv/bin/activate
if [ -f requirements.txt ]; then
  pip install --upgrade pip
  pip install -r requirements.txt
fi

echo "Setup complete. Activate venv with: source .venv/bin/activate"
