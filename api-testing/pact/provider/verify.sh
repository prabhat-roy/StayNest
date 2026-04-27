#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.staynest.internal \
  --provider staynest_identity_service \
  --provider-base-url http://identity-service.staynest.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
