{{- define "night-audit.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "night-audit.labels" -}}
app.kubernetes.io/name: night-audit
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: pms
{{- end -}}

{{- define "night-audit.selectorLabels" -}}
app.kubernetes.io/name: night-audit
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
