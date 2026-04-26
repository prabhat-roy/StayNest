# GitOps — StayNest

Per-cloud ArgoCD instances reconcile Helm charts from this repo. App-of-Apps
pattern with one ApplicationSet generating one Application per service per cloud.
Argo Rollouts handle canary for guest-facing services and blue-green for night
audit + rate publishing (per CLAUDE.md).
