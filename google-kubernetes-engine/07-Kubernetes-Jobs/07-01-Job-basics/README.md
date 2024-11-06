# Title: Kubernetes Jobs - Basics

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn and Implement Kubernetes Job Basics
## Step-01: Introduction
1. Review Kubernetes Job yaml file
2. Deploy and verify the job
3. Create Kubernetes job imperatively using `kubectl job`
4. Clean-up both jobs

## Step-02: job1.yaml
```yaml
apiVersion: batch/v1
kind: Job
metadata:
  # Unique key of the Job instance
  name: job1
spec:
  template:
    metadata:
      name: job1
    spec:
      containers:
      - name: job1
        image: alpine
        command: ['sh', '-c', 'echo Kubernetes Jobs Demo ; sleep 30']
      # Do not restart containers after they exit
      restartPolicy: Never
```

## Step-03: Deploy Kubernetes Manifests
```t
# Deploy Kubernetes Manifests
kubectl apply -f kube-manifests
[or]
kubectl create -f kube-manifests

# List Jobs
kubectl get jobs

# Describe Job
kubectl describe job job1

# List Pods
kubectl get pods
Observation:
1. We see this Pod ran for around 30 seconds. 2. Then Pod status turns to Completed.

# Describe Pod
kubect describe pod <POD-NAME>
```

## Step-04: Delete the Job
```t
# Delete the Job
kubectl delete job job1
```

## Step-05: Create Job using kubectl Imperative command and clean-up
```t
# Create Job
kubectl create job job2 --image=alpine -- sh -c 'echo Kubernetes Jobs Basics Demo ; sleep 30'

# List the Job
kubectl get jobs

# List the Pods
kubectl get pods

# Delete Job
kubectl delete job job2
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