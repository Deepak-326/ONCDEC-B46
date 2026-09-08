## DaemonSet
A DaemonSet ensures that all (or some) Nodes run a copy of a Pod.
Some typical uses of a DaemonSet are:
running a cluster storage daemon on every node
running a logs collection daemon on every node
running a node monitoring daemon on every node
```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: app1
spec:
  selector:
    matchLabels:
      app: app1
  template:
    metadata:
      labels:
        app: app1
    spec:
      containers:
        - name: app1-container
          image: nginx
          ports:
            - containerPort: 80
```

<img width="1233" height="568" alt="image" src="https://github.com/user-attachments/assets/3a166699-775d-49eb-af2c-52536769c74d" />
