{{- define "availability-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "availability-service.labels" -}}
app.kubernetes.io/name: availability-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: crs
{{- end -}}

{{- define "availability-service.selectorLabels" -}}
app.kubernetes.io/name: availability-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
