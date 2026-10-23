#!/usr/bin/env bash
set -euo pipefail
TAG="${1:?usage: deploy.sh <tag>}"
cd /opt/tasktrack
export IMAGE_TAG="$TAG"
docker compose pull
docker compose up -d
docker image prune -f >/dev/null
echo "Deployed $TAG"