{{- define "secret-sync-operator.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- .Values.nameOverride | default .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{- define "secret-sync-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}

{{- define "secret-sync-operator.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default .Values.serviceAccount.name (include "secret-sync-operator.fullname" .) }}
{{- else }}
{{- default .Values.serviceAccount.name "default" }}
{{- end }}
{{- end }}
