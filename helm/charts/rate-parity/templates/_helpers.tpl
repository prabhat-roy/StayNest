{{- define "rate-parity.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "rate-parity.labels" -}}
app.kubernetes.io/name: rate-parity
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: channel-manager
{{- end -}}

{{- define "rate-parity.selectorLabels" -}}
app.kubernetes.io/name: rate-parity
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
