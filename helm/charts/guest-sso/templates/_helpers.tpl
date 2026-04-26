{{- define "guest-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "guest-sso.labels" -}}
app.kubernetes.io/name: guest-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: identity
{{- end -}}

{{- define "guest-sso.selectorLabels" -}}
app.kubernetes.io/name: guest-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
