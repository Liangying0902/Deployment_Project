#!/usr/bin/env bash
set -euo pipefail
cd /opt/tasktrack
TAG=$(cat last_good_tag 2>/dev/null) || { echo "No good tag saved"; exit 1; }
echo "Rolling back to $TAG"
export IMAGE_TAG="$TAG" FORCE_UNHEALTHY=false
docker compose up -d
./healthcheck.sh http://localhost/health "$TAG"