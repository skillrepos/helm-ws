 export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=chartmuseum" -o jsonpath="{.items[0].metadata.name}")

  kubectl port-forward $POD_NAME $1:8080 --namespace default

