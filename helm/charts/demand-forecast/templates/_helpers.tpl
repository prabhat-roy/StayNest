{{- define "demand-forecast.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "demand-forecast.labels" -}}
app.kubernetes.io/name: demand-forecast
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: rms
{{- end -}}

{{- define "demand-forecast.selectorLabels" -}}
app.kubernetes.io/name: demand-forecast
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
