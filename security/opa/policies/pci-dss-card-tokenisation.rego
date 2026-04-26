# StayNest PCI-DSS - card data NEVER stored or transmitted in raw form
# Every payment payload MUST present a payment-gateway token, NEVER a raw PAN.
package staynest.pci.card_tokenisation

import future.keywords.if
import future.keywords.in

default allow := false

# Allow if payload contains tokenised reference (no raw PAN)
allow if {
    input.payload.payment_token != ""
    not contains_raw_pan
    input.payload.tokenisation_provider in {"adyen", "stripe", "braintree", "worldpay"}
}

contains_raw_pan if {
    # Detect 13-19 digit unmasked card numbers in any string field
    field_value := input.payload[_]
    is_string(field_value)
    regex.match("^[0-9]{13,19}$", field_value)
}

contains_raw_pan if {
    field_value := input.payload[_]
    is_string(field_value)
    # Detect formatted card numbers like 4111-1111-1111-1111 or 4111 1111 1111 1111
    regex.match("^[0-9]{4}[- ][0-9]{4}[- ][0-9]{4}[- ][0-9]{4}$", field_value)
}

deny[msg] if {
    contains_raw_pan
    msg := "PCI-DSS VIOLATION: raw card number detected in payload - all payments MUST use tokenised reference from payment gateway"
}

deny[msg] if {
    input.kind == "log.line"
    contains_raw_pan
    msg := "PCI-DSS VIOLATION: log line contains raw card number - logs must mask PANs"
}

deny[msg] if {
    input.kind == "kafka.produce"
    input.topic in {"finance.payment.requested", "finance.payment.completed", "crs.booking.confirmed"}
    not input.payload.payment_token
    msg := sprintf("PCI-DSS VIOLATION: %q event missing payment_token - tokenisation is mandatory", [input.topic])
}
