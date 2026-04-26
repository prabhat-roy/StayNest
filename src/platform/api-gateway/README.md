# api-gateway

HTTP+gRPC ingress, OAuth2/mTLS, rate limit, multi-property routing.

**Domain:** `platform` · **Language:** go · **Port:** 50000

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`
- `GET /metrics` — Prometheus metrics

## See also

- [proto/platform/api-gateway.proto](../../../proto/platform/api-gateway.proto) — gRPC contract
- [helm/charts/api-gateway/](../../../helm/charts/api-gateway/) — Helm chart
- [../README.md](../README.md) — domain overview
