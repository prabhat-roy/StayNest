{{- define "preventive-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "preventive-service.labels" -}}
app.kubernetes.io/name: preventive-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: maintenance
{{- end -}}

{{- define "preventive-service.selectorLabels" -}}
app.kubernetes.io/name: preventive-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
