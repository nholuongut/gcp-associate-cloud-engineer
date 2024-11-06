# Title: Kubernetes - Deployment Imperative

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn and Implement Kubernetes Deployment
## Kubernetes Deployment - Topics
1. Create Deployment
2. Scale the Deployment
3. Expose Deployment as a Service
4. Update Deployment
5. Rollback Deployment
6. Rolling Restarts

## Step-01: Introduction to Deployments
- What is a Deployment?
- What all we can do using Deployment?
- Create a Deployment
- Scale the Deployment
- Expose the Deployment as a Service

## Step-02: Create Deployment
- Create Deployment to rollout a ReplicaSet
- Verify Deployment, ReplicaSet & Pods
```t
# Create Deployment
kubectl create deployment <Deplyment-Name> --image=<Container-Image> --replicas=3
kubectl create deployment my-first-deployment --image=ghcr.io/luongutnho/kubenginx:1.0.0 --replicas=3

# Verify Deployment
kubectl get deployments
kubectl get deploy 

# Describe Deployment
kubectl describe deployment <deployment-name>
kubectl describe deployment my-first-deployment

# Verify ReplicaSet
kubectl get rs

# Verify Pod
kubectl get po
```
### Update Change-Cause for the Kubernetes Deployment - Rollout History
- **Observation:** We have the rollout history, so we can switch back to older revisions using revision history available to us
```t
# Verify Rollout History
kubectl rollout history deployment/my-first-deployment

# Update REVISION CHANGE-CAUSE for Kubernetes Deployment
kubectl annotate deployment/my-first-deployment kubernetes.io/change-cause="Deployment CREATE - App Version 1.0.0"

# Verify Rollout History
kubectl rollout history deployment/my-first-deployment
```
## Step-03: Scaling a Deployment
- Scale the deployment to increase the number of replicas (pods)
```t
# Scale Up the Deployment
kubectl scale --replicas=6 deployment/<Deployment-Name>
kubectl scale --replicas=6 deployment/my-first-deployment 

# Verify Deployment
kubectl get deploy

# Verify ReplicaSet
kubectl get rs

# Verify Pods
kubectl get po

# Scale Down the Deployment
kubectl scale --replicas=3 deployment/my-first-deployment 
kubectl get deploy
```

## Step-04: Expose Deployment as a Service
- Expose **Deployment** with a service (LoadBalancer Service) to access the application externally (from internet)
```t
# Expose Deployment as a Service
kubectl expose deployment <Deployment-Name>  --type=LoadBalancer --port=80 --target-port=80 --name=<Service-Name-To-Be-Created>
kubectl expose deployment my-first-deployment --type=LoadBalancer --port=80 --target-port=80 --name=my-first-deployment-service

# Get Service Info
kubectl get svc
```
- **Access the Application using Public IP**
```t
# Access Application
http://<External-IP-from-get-service-output>
curl http://<External-IP-from-get-service-output>
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