# Install Metrics Server

````
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
````
````
kubectl -n kube-system patch deployment metrics-server \
--type='json' \
-p='[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
````

````
kubectl rollout status deployment metrics-server -n kube-system

````
````
kubectl get apiservice v1beta1.metrics.k8s.io
````


# Create Dep and Service
````
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hpa-nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hpa-nginx
  template:
    metadata:
      labels:
        app: hpa-nginx
    spec:
      containers:
      - name: nginx
        image: nginx
        resources:
          requests:
            cpu: "100m"
          limits:
            cpu: "200m"
        ports:
        - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: hpa-service
spec:
  selector:
    app: hpa-nginx
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: ClusterIP
````

# Create HPA
````
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: hpa-nginx
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: hpa-nginx
  minReplicas: 1
  maxReplicas: 5
  metrics:
  - type: Resource
    resource:
      name: cpu
      target:
        type: Utilization
        averageUtilization: 50
````

# Generate Load
````
kubectl run -i --tty load-generator --image=busybox /bin/sh
````
*note:* - run below command in shell

````
while true; do wget -q -O- http://hpa-service; done
````
# Output
- open tab 2 
<img width="1702" height="936" alt="image" src="https://github.com/user-attachments/assets/f36a2361-56fd-4c25-873b-6c69043d82a3" />

````
kubectl get hpa -w
kubectl get pods
````
