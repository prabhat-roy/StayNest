# Networking — StayNest

| Layer | Tool | Role |
|---|---|---|
| Edge   | Cloudflare + Traefik | Global CDN + WAF + TLS termination |
| Mesh   | Istio                | mTLS STRICT, AuthorizationPolicy default-deny, retries |
| CNI    | Cilium               | eBPF L3/L4, cross-domain BFF-only ingress |
| API GW | Kong                 | OTA partner JWT/OIDC plugin layer |
| Linkerd | Linkerd             | Failover mesh option (not active by default) |
