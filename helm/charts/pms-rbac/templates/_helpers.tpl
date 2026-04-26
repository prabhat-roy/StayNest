{{- define "pms-rbac.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pms-rbac.labels" -}}
app.kubernetes.io/name: pms-rbac
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: identity
{{- end -}}

{{- define "pms-rbac.selectorLabels" -}}
app.kubernetes.io/name: pms-rbac
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
