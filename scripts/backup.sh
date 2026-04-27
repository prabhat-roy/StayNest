#!/usr/bin/env bash
set -euo pipefail
NS="${1:-staynest}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "staynest-$TS" --include-namespaces "$NS" --wait
