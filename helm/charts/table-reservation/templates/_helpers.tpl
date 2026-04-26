{{- define "table-reservation.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "table-reservation.labels" -}}
app.kubernetes.io/name: table-reservation
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: fnb
{{- end -}}

{{- define "table-reservation.selectorLabels" -}}
app.kubernetes.io/name: table-reservation
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
