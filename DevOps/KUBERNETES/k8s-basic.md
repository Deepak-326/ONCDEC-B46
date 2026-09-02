<img width="1445" height="621" alt="image" src="https://github.com/user-attachments/assets/3465449c-886e-459f-8383-e567f0f48ce8" />

## Manifest File


### Step1:  create file
````
vim pod.yaml
````
````
apiVersion: v1
kind: Pod
metadata:
  name: mypod
  labels: 
    app: crypto
spec:
  containers:
    - name: cont-02
      image: abhipraydh96/bitcoin
      ports:
       - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: svc-mypod
spec:
  selector:
    app: crypto
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: NodePort
````


### apply manifest file

````
kubectl apply -f pod.yaml
````

````
kubectl get pods
kubectl get svc
````
