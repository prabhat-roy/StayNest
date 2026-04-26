{{- define "chat-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chat-service.labels" -}}
app.kubernetes.io/name: chat-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: guest
{{- end -}}

{{- define "chat-service.selectorLabels" -}}
app.kubernetes.io/name: chat-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
