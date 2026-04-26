# StayNest multi-currency - every monetary transaction MUST persist:
#   1. Amount in original currency
#   2. Amount in property base currency
#   3. Conversion rate used (with timestamp)
# This is non-negotiable for accurate revenue reporting and tax compliance.
package staynest.currency.conversion_rate_required

import future.keywords.if
import future.keywords.in

default allow := false

# Allow if all three fields present with valid types
allow if {
    is_number(input.transaction.amount_original)
    input.transaction.currency_original != ""
    is_number(input.transaction.amount_base_currency)
    input.transaction.currency_base != ""
    is_number(input.transaction.conversion_rate)
    input.transaction.conversion_rate > 0
    input.transaction.conversion_rate_timestamp != ""
}

# Same-currency transactions still need conversion_rate=1 explicit
allow if {
    input.transaction.currency_original == input.transaction.currency_base
    input.transaction.conversion_rate == 1
    input.transaction.conversion_rate_timestamp != ""
}

deny[msg] if {
    not input.transaction.amount_original
    msg := "transaction missing amount_original"
}

deny[msg] if {
    not input.transaction.currency_original
    msg := "transaction missing currency_original (ISO 4217 code)"
}

deny[msg] if {
    not input.transaction.amount_base_currency
    msg := "transaction missing amount_base_currency (property home currency)"
}

deny[msg] if {
    not input.transaction.conversion_rate
    msg := "transaction missing conversion_rate - all multi-currency transactions must persist explicit rate"
}

deny[msg] if {
    not input.transaction.conversion_rate_timestamp
    msg := "transaction missing conversion_rate_timestamp - rate must be timestamped for audit"
}

deny[msg] if {
    input.transaction.currency_original != input.transaction.currency_base
    input.transaction.conversion_rate == 1
    msg := "implicit conversion_rate=1 for cross-currency transaction is forbidden"
}
