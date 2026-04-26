{{- define "banquet-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "banquet-service.labels" -}}
app.kubernetes.io/name: banquet-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: event
{{- end -}}

{{- define "banquet-service.selectorLabels" -}}
app.kubernetes.io/name: banquet-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
