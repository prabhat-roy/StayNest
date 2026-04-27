#!/usr/bin/env bash
# One-shot deploy of every OSS tool registered for StayNest via ArgoCD.
set -euo pipefail
argocd app sync -l "project=staynest-tools" --grpc-web
