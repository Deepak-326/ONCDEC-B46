

````
apiVersion: apps/v1
kind: Deployment
metadata:
  name: netflix-app
spec:
  replicas: 4
  selector:
    matchLabels:
      app: streaming
  template:
    metadata:
      labels:
        app: streaming
    spec:
      containers:
       - name: netflix
         image: abhipraydh96/netflix 
         ports:
          - containerPort: 80
---
apiVersion: v1 
kind: Service
metadata:
 name: svc-netflix-app 
spec:
  selector: 
    app: streaming
  ports:
    - protocol: TCP 
      port: 80
      targetPort: 80
  type: NodePort
````


````
kubectl apply -f filename.yaml
````

````
kubectl get deploy
````
````
kubectl get rs
````
````
kubectl get pods
````

````
kubectl get svc
````
