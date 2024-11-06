# Title: GCP Google Kubernetes Engine Vertical Pod Autoscaling

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Implement GKE Cluster Vertical Pod Autoscaling
## Step-01: Introduction
- Implement GKE Cluster Vertical Pod Autoscaling

### Pre-requisite: Verify Cluster Autoscaler enabled on default pool
- Verify if CLuster  Autoscaler enabled on default pool
- We already enabled it as part of Cluster Autoscaler demo

## Step-02: Review 01-kubernetes-deployment.yaml
```yaml
apiVersion: apps/v1
kind: Deployment 
metadata: 
  name: myapp1-deployment
spec: 
  replicas: 1
  selector:
    matchLabels:
      app: myapp1
  template:  
    metadata:
      name: myapp1-pod
      labels:
        app: myapp1  
    spec:
      containers: 
        - name: myapp1-container
          image: ghcr.io/luongutnho/kubenginx:1.0.0
          ports: 
            - containerPort: 80  
          resources:
            requests:
              memory: "5Mi" # 128 MebiByte is equal to 135 Megabyte (MB)
              cpu: "25m" # `m` means milliCPU
            limits:
              memory: "50Mi"
              cpu: "50m"  # 1000m is equal to 1 VCPU core                                               
```

## Step-03: Deploy Kubernetes Resources
```t
# Deploy Kubernetes Resources
kubectl apply -f kube-manifests

# List Deployments
kubectl get deploy

# List Pods
kubectl get pods
```

## Step-04: Enable VPA for myapp1-deployment workload
- Go to GKE -> Workloads -> myapp1-deployment -> Overview -> CONFIGURE
- **Update Mode:** Auto
- Review graphs
- Define a Resource Policy
- Click on **Save**
```yaml
apiVersion: autoscaling.k8s.io/v1
kind: VerticalPodAutoscaler
metadata:
  name: myapp1-deployment
  namespace: default
  clusterName: standard-public-cluster-1
spec:
  targetRef:
    kind: Deployment
    name: myapp1-deployment
    apiVersion: apps/v1
  updatePolicy:
    updateMode: Auto
  resourcePolicy:
    containerPolicies:
      - containerName: myapp1-container
        mode: Auto
        controlledResources:
          - cpu
          - memory
        minAllowed:
          cpu: 25m
          memory: 50Mi
        maxAllowed:
          cpu: 100m
          memory: 100Mi
```

## Step-05: List and Describe Vertical Pod Autoscaling Resource
```t
# List VPA
kubectl get vpa

## Sample Output
dkalyanreddy@cloudshell:~ (gcplearn9)$ kubectl get vpa
NAME                MODE   CPU   MEM    PROVIDED   AGE
myapp1-deployment   Auto   25m   50Mi   True       6m8s
dkalyanreddy@cloudshell:~ (gcplearn9)$ 

# Describe VPA
kubectl describe vpa myapp1-deployment
```

## Step-06: Clean-Up
```t
# Delete Kubernetes Resources
kubectl delete -f kube-manifests

# Delete VPA
kubectl get vpa
kubectl delete vpa myapp1-deployment
```

## FOR A QUICK LOAD TEST
```t
# Run Load Test (New Terminal)
kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://myapp1-cip-service; done"
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