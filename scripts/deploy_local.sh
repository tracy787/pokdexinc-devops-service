#!/usr/bin/env bash
set -e
TARGET_DIR=${1:-/tmp/pokdexinc-deploy}
mkdir -p "$TARGET_DIR"
rsync -av --exclude='.git' --exclude='.venv' . "$TARGET_DIR/"
echo "Deployed to $TARGET_DIR (local simulation)"
