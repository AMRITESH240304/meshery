apiVersion: meshery.io/v1alpha1
kind: MeshSync
metadata:
  name: {{ .Values.name }}
  namespace: {{ .Release.Namespace }}
spec:
  size: {{ .Values.replica }}
  broker:
    native:
      name: {{ .Values.broker.name }}
      namespace: {{ .Values.broker.namespace }}
  watch-list:
    data:
      whitelist: {{ .Values.watchConfig.whitelist }}
