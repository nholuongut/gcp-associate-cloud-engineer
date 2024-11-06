# Title: Kubernetes - DaemonSets

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn and Implement Kubernetes DaemonSets
## Step-01: Introduction
- Understand Kubernetes DaemonSets
- Review sample DaemonSet

## Step-02: Review DaemonSet
```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: myapp1-daemonset
  namespace: default
  labels:
    app: myapp
spec:
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: myapp-container
        image: ghcr.io/luongutnho/kubenginx:1.0.0
```

## Step-03: Deploy and Verify 
```t
# Deploy Kubernetes Resources
kubectl apply -f kube-manifests/

# Verify DaemonSet
kubectl get daemonset
kubectl get ds

# Verify Pods
kubectl get pods -o wide
Observation: 
1. Verify if pods got scheduled on Nodes created for NodePool:linuxapps-nodepool
NodePool:default
```

## Step-05: Clean-Up
```t
# Delete Kubernetes Resources
kubectl delete -f kube-manifests/

# Delete Node pool 
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

