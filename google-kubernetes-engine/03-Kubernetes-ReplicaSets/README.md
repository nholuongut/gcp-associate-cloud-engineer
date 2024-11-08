# Title: Kubernetes ReplicaSets

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn about Kubernetes ReplicaSets
## Step-01: Introduction to ReplicaSets
- What are ReplicaSets?
- What is the advantage of using ReplicaSets?
### Pre-requisite: VS Code Extension - Kubernetes Templates
- [Kubernetes Templates](https://marketplace.visualstudio.com/items?itemName=lunuan.kubernetes-templates)

## Step-02: Create ReplicaSet
### Step-02-01: Create ReplicaSet
- Create ReplicaSet
```t
# Kubernetes ReplicaSet
kubectl create -f replicaset-demo.yaml
```
- **replicaset-demo.yml**
```yaml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: my-helloworld-rs
  labels:
    app: my-helloworld
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-helloworld
  template:
    metadata:
      labels:
        app: my-helloworld
    spec:
      containers:
      - name: my-helloworld-app
        image: us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0
        ports: 
          - containerPort: 8080 
```

### Step-02-02: List ReplicaSets
- Get list of ReplicaSets
```t
# List ReplicaSets
kubectl get replicaset
kubectl get rs
```

### Step-02-03: Describe ReplicaSet
- Describe the newly created ReplicaSet
```t
# Describe ReplicaSet
kubectl describe rs/<replicaset-name>

kubectl describe rs/my-helloworld-rs
[or]
kubectl describe rs my-helloworld-rs
```

### Step-02-04: List of Pods
- Get list of Pods
```t
# Get list of Pods
kubectl get pods
kubectl describe pod <pod-name>

# Get list of Pods with Pod IP and Node in which it is running
kubectl get pods -o wide
```


## Step-03: Expose ReplicaSet as a Service
- Expose ReplicaSet with a service (Load Balancer Service) to access the application externally (from internet)
```t
# Expose ReplicaSet as a Service
kubectl expose rs <ReplicaSet-Name>  --type=LoadBalancer --port=80 --target-port=8080 --name=<Service-Name-To-Be-Created>
kubectl expose rs my-helloworld-rs  --type=LoadBalancer --port=80 --target-port=8080 --name=my-helloworld-rs-service

# List Services
kubectl get service
kubectl get svc
```
- **Access the Application using External or Public IP**
```t
# Access Application
http://<External-IP-from-get-service-output>
curl http://<External-IP-from-get-service-output>

# Observation
1. Each time we access the application, request will be sent to different pod and pods id will be displayed for us. 

# Run in command line
while true; do curl http://EXTERNAL-IP; sleep 1; done
while true; do curl http://34.71.253.159; sleep 1; done
```

## Step-04: Test Replicaset Reliability or High Availability 
- Test how the high availability or reliability concept is achieved automatically in Kubernetes
- Whenever a POD is accidentally terminated due to some application issue, ReplicaSet should auto-create that Pod to maintain desired number of Replicas configured to achive High Availability.
```t
# To get Pod Name
kubectl get pods

# Delete the Pod
kubectl delete pod <Pod-Name>

# Verify the new pod got created automatically
kubectl get pods   (Verify Age and name of new pod)
``` 

## Step-05: Test ReplicaSet Scalability feature 
- Test how scalability is going to seamless & quick
- Update the **replicas** field in **replicaset-demo.yml** from 3 to 6.
```yaml
# Before change
spec:
  replicas: 3

# After change
spec:
  replicas: 5
```
- **Update the ReplicaSet**
```t
# Apply latest changes to ReplicaSet
kubectl apply -f replicaset-demo.yml

# Verify if new pods got created
kubectl get pods -o wide

# Using Imperative way (Scale-out)
kubectl scale --replicas=7 replicaset my-helloworld-rs

# Using Imperative way (Scale-in)
kubectl scale --replicas=2 replicaset my-helloworld-rs
```
- **Edit ReplicaSet**
```t
# Edit ReplicaSet
kubectl edit replicaset my-helloworld-rs
Change "replicas: 2" to "replicas:7"
Save it

# Verify Pods
kubectl get pods
```

## Step-06: Delete ReplicaSet & Service
### Step-06-01: Delete ReplicaSet
```t
# Delete ReplicaSet
kubectl delete rs <ReplicaSet-Name>

# Sample Commands
kubectl delete rs/my-helloworld-rs
[or]
kubectl delete rs my-helloworld-rs

# Verify if ReplicaSet got deleted
kubectl get rs
```

### Step-06-02: Delete Service created for ReplicaSet
```t
# Delete Service
kubectl delete svc <service-name>

# Sample Commands
kubectl delete svc my-helloworld-rs-service
[or]
kubectl delete svc/my-helloworld-rs-service

# Verify if Service got deleted
kubectl get svc
```

![](https://i.i/Users/nholu/Documents/Donate.png/Users/nholu/Documents/Donate.pngmgur.com/waxVImv.png)
# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact Me]
* [Name: Nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟