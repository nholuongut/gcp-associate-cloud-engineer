# Title: GCP Google Kubernetes Engine GKE ClusterIP Service

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Implement GCP Google Kubernetes Engine GKE ClusterIP Service
## Step-01: Introduction
- Implement Kubernetes ClusterIP service

## Step-02: 01-kubernetes-deployment.yaml
```yaml
apiVersion: apps/v1
kind: Deployment 
metadata: #Dictionary
  name: myapp1-deployment
spec: # Dictionary
  replicas: 2
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
          image:nholuongut/kubenginx:1.0.0
          ports: 
            - containerPort: 80      
```

## Step-03: Review ClusterIP Service
```yaml
apiVersion: v1
kind: Service
metadata:
  name: my-clusterip-service 
  labels:
    app: myapp1
spec:
  type: ClusterIP # ClusterIPis a default service in k8s
  selector:
    app: myapp1
  ports:
    - name: http
      port: 80 # ClusterIP Service Port
      targetPort: 80 # Container Port
```


## Step-04: Deply Kubernetes Manifests
```t
# Deploy Kubernetes Manifests
kubectl apply -f kube-manifests

# List Deployments
kubectl get deploy

# List Pods
kubectl get po

# List Services
kubectl get svc
```

## Step-05: Review Curl Kubernetes Manifests
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

## Step-06: Deply Curl-pod and Verify ClusterIP service
```t
# Deploy curl-pod
kubectl apply -f 02-kube-manifests-curl

# List Kubernetes Services
kubectl get svc
1. Make a note of my-clusterip-service IP address

# Will open up a terminal session into the container
kubectl exec -it curl-pod -- sh

# Curl Test - Access App using IP
curl http://<ClusterIP-svc-IP-address>/

# Curl Test - Access App using DNS Name
curl http://<ClusterIP-svc-DNS-Name>/
curl http://my-clusterip-service
curl http://my-clusterip-service.default.svc.cluster.local
exit
```

## Step-07: Clean-Up
```t
# Delete Kubernetes Manifests
kubectl delete -f 01-kube-manifests
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