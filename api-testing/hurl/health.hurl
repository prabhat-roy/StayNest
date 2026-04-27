# Health check for all critical services
GET https://staynest.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.staynest.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
