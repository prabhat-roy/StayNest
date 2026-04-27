# CI Pipelines â€” StayNest

Pipelines parameterised by CLOUD (aws | gcp | azure) so a single pipeline
config can deploy to any of the three clouds.

| Platform | Path | Purpose |
|---|---|---|
| Jenkins | `ci/jenkins/` | Primary CI â€” build, scan, sign, push |
| GitHub Actions | `ci/github-actions/` | PR validation (lint, SAST, secrets, OpenSSF Scorecard). Stored here (not `.github/`) to keep auto-trigger off. |
| GitLab CI | `ci/gitlab-ci/` | Container supply chain â€” Kaniko + SBOM + Cosign + Harbor + Clair |
| Tekton | `ci/tekton/` | In-cluster K8s tasks (DB migrations, Helm deploys) |

All pipelines accept `CLOUD={aws|gcp|azure}` and apply the matching Helm overlay
from `helm/charts/<svc>/values-<cloud>.yaml`.

## Deployment strategy
Per CLAUDE.md: default to canary; PMS night audit and rate publishing use blue-green.
