{{- define "occupancy-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "occupancy-analytics.labels" -}}
app.kubernetes.io/name: occupancy-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: analytics
{{- end -}}

{{- define "occupancy-analytics.selectorLabels" -}}
app.kubernetes.io/name: occupancy-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
