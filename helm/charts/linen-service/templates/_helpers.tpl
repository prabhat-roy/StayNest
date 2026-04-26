{{- define "linen-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "linen-service.labels" -}}
app.kubernetes.io/name: linen-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: housekeeping
{{- end -}}

{{- define "linen-service.selectorLabels" -}}
app.kubernetes.io/name: linen-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
