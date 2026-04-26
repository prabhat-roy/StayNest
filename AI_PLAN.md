# AI_PLAN.md — StayNest (Hospitality & Property Management Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the StayNest-specific specialisation.

---

## 1. Why AI in StayNest

Hospitality runs on demand prediction, dynamic pricing, and conversational
guest service in many languages. AI is the leverage point for:

- **Demand + pickup forecasting** at room-night granularity.
- **Dynamic pricing / yield management** that reacts to OTA + comp-set
  signals in minutes.
- **Multilingual conversational concierge** — pre-arrival, on-property, and
  post-stay.
- **OTA review summarisation** for ops and revenue management.
- **No-show + cancellation prediction** to drive overbooking risk safely.
- **Room-allocation optimisation** under upgrade/upsell constraints.

PCI-DSS for payments and GDPR for guest data are the binding constraints.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Demand + pickup forecast (room-night) | rms | Temporal Fusion Transformer + holiday + event calendars | hourly |
| 2 | Dynamic pricing / yield engine | rms | RL + LightGBM + comp-set scraper signals | <60 s/replan |
| 3 | Multilingual concierge chatbot (40+ langs) | guest, crm | Llama 3.1 70B + property-fact RAG + Whisper | <1.2 s |
| 4 | OTA review summarisation + topic mining | analytics, crm | Llama 3.1 70B + BERTopic + sentiment | hourly |
| 5 | No-show + cancellation prediction | crs | LightGBM | <300 ms |
| 6 | Room-allocation optimiser (upgrade/upsell) | pms | OR-Tools + LightGBM | <30 s |
| 7 | Personalised offers / next-best-offer | crm, loyalty | Two-tower retrieval + uplift model | <100 ms |
| 8 | Energy / occupancy ML on IoT | maintenance, energy | Isolation Forest + LSTM | streaming |
| 9 | Fraud detection (chargeback, rate-arbitrage) | finance | GBM + graph features | <300 ms |
| 10 | Voice front-desk assistant | pms, staff | Whisper + Llama 3.1 70B + tool-calling | <1.5 s |
| 11 | Image-based listing quality / photo selection | content, marketing | CLIP + CV scorer | <2 s/image |
| 12 | Group / event RFP scoring | event, sales | LightGBM + LLM rationale | <2 s |

---

## 3. Hierarchical Agent Architecture

Reuses **OpenClaw** / **Paperclip** / **NemoClaw** from `ShopOS/AI.md`.

### Tier 0 — Master Architect Agent

`stay-architect` — researches AI tooling, proposes services, on-boards
Tier-1 leads, weekly written report. Read-only on prod.

### Tier 1 — Division Leads (5)

| Agent | Scope |
|-------|-------|
| `stay-dev-lead`        | Backend/frontend service code |
| `stay-devops-lead`     | Helm, GitOps, infra, CI |
| `stay-devsecops-lead`  | OPA, Vault, Cilium, Falco, PCI-DSS |
| `stay-dataml-lead`     | Feature store, training, drift |
| `stay-platform-lead`   | Cross-cutting (idempotency, saga, outbox) |

### Tier 2 — Specialist Agents

**By language**: Go, Java, Kotlin, Python, Node, Rust, Elixir, TypeScript,
Dart.

**By tool**: PostgreSQL, MongoDB, Redis, Elasticsearch, Cassandra,
TimescaleDB, Kafka, NATS, RabbitMQ, MQTT, Vault, Keycloak, OPA, Kyverno,
Falco, Cilium, Istio, ArgoCD, Argo Workflows, Prometheus, Grafana, Loki,
Jaeger, OpenTelemetry, MinIO, Trivy, Cosign, MapLibre, Strapi-CMS,
Mautic, Pulsar, Druid, Camunda, OpenFGA, Wazuh.

**By service** — one agent per microservice (~185). Owns README,
OpenAPI, tests, CHANGELOG, deps, /healthz.

### Tier 3 — Ephemeral Workers

Spawned for retraining demand model post-major-event, generating multi-
language concierge knowledge bases, building per-property pricing
playbooks.

### Lifecycle

Research → Document → Implement → Test → Review → Deploy → Monitor →
Respond → Upgrade → Report. Plus an **overbooking-safety gate**:
no-show prediction can never bypass distributed lock / DB constraint
that prevents real overbooking.

---

## 4. Separate AI Infrastructure

```
ai-platform/
├── cluster: stay-ai-{aws,gcp,azure}      ← cloud GPU pool
├── namespace: stay-ai-control             ← Paperclip
├── namespace: stay-ai-agents              ← OpenClaw runtime
├── namespace: stay-ai-sandbox             ← NemoClaw
├── namespace: stay-ai-models              ← vLLM, Ollama, LiteLLM, Triton
├── namespace: stay-ai-data                ← Qdrant, Weaviate, MinIO, MLflow
├── namespace: stay-ai-obs                 ← Langfuse, Phoenix
└── namespace: stay-ai-pipelines           ← Argo Workflows
```

### Hardware

- **Cloud**: A100 for forecasting + LLM fine-tunes; A10G/L4 for inference.

### Software stack

Standard self-hosted set + multilingual voice stack (Whisper + Coqui TTS).

### Data isolation

- Per-region (EU / UK / US / APAC / ME) AI data planes.
- Guest PII tokenised before LLM input; PCI cardholder data never
  reaches AI plane.
- Vector DB sharded per brand; no cross-brand retrieval by default.

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| PCI-DSS | Tokenised cardholder data; AI never sees PAN |
| GDPR / CCPA / DPDP | PII tokenisation; right-to-erasure |
| Tourism reporting (city tax, occupancy) | Outputs reconciled against authoritative DB before submission |
| Rate-parity (OTA contract) | Pricing AI hard-bounded by parity rules; humans approve floor / ceiling |
| Concierge honesty | NemoClaw blocks invented amenities; RAG-only on property data |
| Overbooking | AI predictions advisory only — atomic inventory locks remain authoritative |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `stay-ai-*` cluster up; vLLM Llama 3.1 70B |
| 2 | Paperclip + NemoClaw; Tier-0 architect live |
| 3 | Tier-1 leads; demand forecast v0 shadow |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents (rms → crs → guest first) |
| 6 | Concierge chatbot v1 in 6 langs |
| 7 | Dynamic pricing v1 in 1 brand cluster |
| 8 | Voice front-desk pilot; multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- **Cloud infra**: $4,000 – $6,500 / month per primary cloud
- **No** subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
