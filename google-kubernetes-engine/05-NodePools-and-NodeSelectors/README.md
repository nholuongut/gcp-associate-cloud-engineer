# Title: Google Kubernetes Engine - Node Pools and Node Selectors

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn and Implement Kubernetes Node Selectors and GKE Node pools
## Step-01: Introduction
- Create a GKE Node Pool
- Deploy Kubernetes Deployment with NodeSelector added
- Verify and Clean-Up

## Step-02: Create a GKE Node Pool
```t
# List Node Pools
gcloud container node-pools list --cluster "standard-public-cluster-1" --location "us-central1"

# Create Linux Node Pool 
gcloud container node-pools create "linuxapps-nodepool" \
  --cluster "standard-public-cluster-1" \
  --machine-type "e2-small" \
  --disk-size "20" \
  --num-nodes "1" \
  --location "us-central1" \
  --spot 

# List Node Pools
gcloud container node-pools list --cluster "standard-public-cluster-1" --location "us-central1"
```

## Step-03: Review Kubernetes Deployment Pod Specification for NodeSelectors
- Deploy pods to specific Node pools
```yaml
apiVersion: apps/v1
kind: Deployment  
metadata: 
  name: mylinuxapp-deployment
spec: 
  replicas: 3
  selector: 
    matchLabels: 
      app: mylinuxapp
  template:
    metadata: 
      name: mylinuxapp-pod
      labels:
        app: mylinuxapp 
    spec:
      # To schedule pods based on NodeSelectors     
      nodeSelector:
        cloud.google.com/gke-nodepool: linuxapps-nodepool  
      containers: 
        - name: mylinuxapp-container
          image: ghcr.io/luongutnho/kubenginx:1.0.0
          ports: 
            - containerPort: 80 
```

## Step-04: Deploy and Verify 
```t
# Deploy Kubernetes Resources
kubectl apply -f kube-manifests/

# Verify Pods
kubectl get pods -o wide
Observation: 
1. Verify if pods got scheduled on Nodes created for NodePool:linuxapps-nodepool

# Access Application
kubectl get svc
http://<EXTERNAL-IP>
```

## Step-05: Clean-Up
```t
# Delete Kubernetes Resources
kubectl delete -f kube-manifests/

# Delete Node pool (DONT DELETE, WE NEED in next DEMO: DaemonSets)
gcloud container node-pools delete "linuxapps-nodepool" \
  --cluster "standard-public-cluster-1" \
  --location "us-central1"
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