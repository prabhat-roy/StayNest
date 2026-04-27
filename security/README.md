# Security â€” StayNest

| Tool | Purpose |
|---|---|
| Vault | Dynamic Postgres/Redis creds, transit encryption, mTLS PKI for Istio, payment-gateway secrets |
| Keycloak | Guest SSO + social login, staff SSO with property-level scoping, MFA, FIDO2/WebAuthn |
| OPA / Gatekeeper | K8s admission, atomic inventory write enforcement, PCI-DSS card tokenisation, multi-currency rate enforcement |
| Kyverno | Image-signature verification + mandatory labels |
| Falco | Runtime threat detection (PII access, payment anomalies, raw inventory writes) |
| cert-manager | TLS automation, Vault-backed issuer |
| SPIRE | Workload identity (SPIFFE SVIDs for every pod) |
| Coraza WAF | OWASP CRS at the edge - protects guest portal + admin |
| Cosign + Sigstore | Keyless image signing via GitHub OIDC |
| Trivy + Syft | Vulnerability scanning + SBOM generation |

## Critical OPA policies (in `opa/policies/`)
- `inventory-atomic-write.rego` â€” blocks any inventory write that lacks a Redlock token or SERIALIZABLE lock claim. Prevents overbooking.
- `pci-dss-card-tokenisation.rego` â€” blocks any payload containing raw PAN; mandates payment-gateway tokens.
- `multi-currency-conversion-rate-required.rego` â€” every monetary transaction must carry amount, currency, base-currency amount, conversion rate, and rate timestamp.

## PII / PCI rules
- Every Kafka payload carrying guest data uses tokenised guest references â€” no raw PII.
- Card data NEVER touches StayNest services - tokenised at payment gateway edge.
