#!/usr/bin/env bash
TAG=${1:-pokdexinc/devops:local}
docker build -t "${TAG}" .
echo "Built image ${TAG}"
