# Title: GCP Google Kubernetes Engine GKE Headless Service

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Implement GCP Google Kubernetes Engine GKE Headless Service
## Step-01: Introduction
- Implement Kubernetes ClusterIP and Headless Service
- Understand Headless Service in detail

## Step-02: 01-kubernetes-deployment.yaml
```yaml
apiVersion: apps/v1
kind: Deployment 
metadata: #Dictionary
  name: myapp1-deployment
spec: # Dictionary
  replicas: 4
  selector:
    matchLabels:
      app: myapp1
  template:  
    metadata: # Dictionary
      name: myapp1-pod
      labels: # Dictionary
        app: myapp1  # Key value pairs
    spec:
      containers: # List
        - name: myapp1-container
          #image:nholuongut/kubenginx:1.0.0
          image: us-docker.pkg.dev/google-samples/containers/gke/hello-app:2.0
          ports: 
            - containerPort: 8080          
```

## Step-03: 02-kubernetes-clusterip-service.yaml
```yaml
apiVersion: v1
kind: Service 
metadata:
  name: myapp1-cip-service
spec:
  type: ClusterIP # ClusterIP, # NodePort, # LoadBalancer, # ExternalName
  selector:
    app: myapp1
  ports: 
    - name: http
      port: 80 # Service Port
      targetPort: 8080 # Container Port
```

## Step-04: 03-kubernetes-headless-service.yaml
- Add `spec.clusterIP: None`
###  VERY IMPORTANT NODE
1. Headless Service directly sends traffic to Pod with Pod IP and Container Port. 
2. DNS resolution directly happens from headless service to Pod IP.

```yaml
apiVersion: v1
kind: Service 
metadata:
  name: myapp1-headless-service
spec:
  #type: ClusterIP # ClusterIP, # NodePort, # LoadBalancer, # ExternalName
  clusterIP: None
  selector:
    app: myapp1
  ports: 
    - name: http
      port: 80 # Service Port
      targetPort: 8080 # Container Port

```

## Step-05: Deply Kubernetes Manifests
```t
# Deploy Kubernetes Manifests
kubectl apply -f 01-kube-manifests

# List Deployments
kubectl get deploy

# List Pods
kubectl get pods
kubectl get pods -o wide
Observation: make a note of Pod IP

# List Services
kubectl get svc
Observation: 
1. "CLUSTER-IP" will be "NONE" for Headless Service

## Sample 
$ kubectl get svc
NAME                      TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes                ClusterIP   10.24.0.1    <none>        443/TCP   135m
myapp1-cip-service        ClusterIP   10.24.2.34   <none>        80/TCP    4m9s
myapp1-headless-service   ClusterIP   None         <none>        80/TCP    4m9s
```

## Step-06: Review Curl Kubernetes Manifests
- **Project Folder:** 02-kube-manifests-curl
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: curl-pod
spec:
  containers:
  - name: curl
    image: curlimages/curl 
    command: [ "sleep", "600" ]
```

## Step-07: Deply Curl-pod and Verify ClusterIP and Headless Services
```t
# Deploy curl-pod
kubectl apply -f 02-kube-manifests-curl

# List Services
kubectl get svc

# GKE Cluster Kubernetes Service Full DNS Name format
<svc>.<ns>.svc.cluster.local

# Will open up a terminal session into the container
kubectl exec -it curl-pod -- sh

# ClusterIP Service: nslookup and curl Test
nslookup myapp1-cip-service.default.svc.cluster.local
curl myapp1-cip-service.default.svc.cluster.local

### ClusterIP Service nslookup Outptu
 $ nslookup myapp1-cip-service.default.svc.cluster.local
Server:		10.24.0.10
Address:	10.24.0.10:53

Name:	myapp1-cip-service.default.svc.cluster.local
Address: 10.24.2.34

# Headless Service: nslookup and curl Test
nslookup myapp1-headless-service.default.svc.cluster.local
curl myapp1-headless-service.default.svc.cluster.local:8080
Observation:
1. There is no specific IP for Headless Service
2. It will be directly dns resolved to Pod IP
3. That said we should use the same port as Container Port for Headless Service (VERY VERY IMPORTANT)

### Headless Service nslookup Output
$ nslookup myapp1-headless-service.default.svc.cluster.local
Server:		10.24.0.10
Address:	10.24.0.10:53

Name:	myapp1-headless-service.default.svc.cluster.local
Address: 10.20.0.25
Name:	myapp1-headless-service.default.svc.cluster.local
Address: 10.20.0.26
Name:	myapp1-headless-service.default.svc.cluster.local
Address: 10.20.1.28
Name:	myapp1-headless-service.default.svc.cluster.local
Address: 10.20.1.29
```

## Step-08: Clean-Up
```t
# Delete Kubernetes Resources
kubectl delete -f 01-kube-manifests

# Delete Kubernetes Resources - Curl Pod
kubectl delete -f 02-kube-manifests-curl
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
