# guest-sso

Service in the identity domain of StayNest.

Language: Go Â· Port: 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/guest-sso/](../../../helm/charts/guest-sso/) â€” Helm chart
- [manifests/identity/guest-sso/](../../../manifests/identity/guest-sso/) â€” Raw K8s manifests
