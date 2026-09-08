# Namespace:
- In Kubernetes, namespaces provide a mechanism for isolating groups of resources within a single cluster.

### list namespaces
````
kubectl get ns
````

### create new ns
````
kubectl create ns prod
````

### create ns with manifest
````
apiversion: v1
kind: Namespace
metadata:
  name: prod
````
---
### switch namespace
````
kubectl config set-context --current --namespace=prod
````

### show curent namespace
````
kubectl config view --minify | grep namespace:
````

### delete ns
````
kubectl delete ns prod
````
