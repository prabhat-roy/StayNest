{{- define "payroll-integration.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "payroll-integration.labels" -}}
app.kubernetes.io/name: payroll-integration
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: staynest
staynest.io/domain: staff
{{- end -}}

{{- define "payroll-integration.selectorLabels" -}}
app.kubernetes.io/name: payroll-integration
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
