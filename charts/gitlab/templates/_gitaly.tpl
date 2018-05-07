{{/* ######### Gitaly related templates */}}

{{/*
Return the gitaly hostname
If the gitaly host is provided, it will use that, otherwise it will fallback
to the service name
*/}}
{{- define "gitlab.gitaly.host" -}}
{{- if .Values.gitaly.host -}}
{{- .Values.gitaly.host -}}
{{- else -}}
{{- $name := default "gitaly" .Values.gitaly.serviceName -}}
{{- printf "%s-%s-0.%s-%s" .Release.Name $name .Release.Name $name -}}
{{- end -}}
{{- end -}}

{{- define "gitlab.gitaly.host1" -}}
{{- if .Values.gitaly.host -}}
{{- .Values.gitaly.host -}}
{{- else -}}
{{- $name := default "gitaly" .Values.gitaly.serviceName -}}
{{- printf "%s-%s-1.%s-%s" .Release.Name $name .Release.Name $name -}}
{{- end -}}
{{- end -}}