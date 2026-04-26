{{- define "recipe-costing.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "recipe-costing.labels" -}}
app.kubernetes.io/name: recipe-costing
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: procurement
{{- end -}}

{{- define "recipe-costing.selectorLabels" -}}
app.kubernetes.io/name: recipe-costing
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
