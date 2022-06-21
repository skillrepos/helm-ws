 export POD_NAME=$(kubectl get pods --namespace roar -l "app=roar-web" -o jsonpath="{.items[0].metadata.name}")
  kubectl port-forward $POD_NAME $1:8080 --namespace roar

