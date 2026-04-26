{{- define "ota-connector.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ota-connector.labels" -}}
app.kubernetes.io/name: ota-connector
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: channel-manager
{{- end -}}

{{- define "ota-connector.selectorLabels" -}}
app.kubernetes.io/name: ota-connector
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
