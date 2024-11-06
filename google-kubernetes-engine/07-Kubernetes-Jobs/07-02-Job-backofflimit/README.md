# Title: Kubernetes Jobs - Job backoffLimit

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn and Implement Kubernetes Job backoffLimit
## Step-01: Introduction
- If Kubernetes Job has an error we want to prevent it from continuously trying to run.
- **backoffLimit:** `backoffLimit` specify the number of retries before a Job is marked as failed. 
- Default value for `backoffLimit: 6`
- We set it to 4 in our demo, we should see 4 Pods in ERROR condition. 

## Step-02: job1.yaml
- In Unix-like systems, including Linux, an **exit status code of 0 indicates success**, while a non-zero **exit status code (usually 1)** indicates failure or an error condition
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
        # In Unix-like systems, including Linux, an exit status code of 0 indicates success, while a non-zero exit status code (usually 1) indicates failure or an error condition
        command: ['sh', '-c', 'echo Kubernetes Jobs Demo - backoffLimit Test ; exit 1']
      # Do not restart containers after they exit
      restartPolicy: Never
  # backoffLimit: Number of retries before marking as failed.
  backoffLimit: 4 # Default value is 6
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
1. We see that pods ran in to Error state
2. Job was retried 4 times based on value provided in "backoffLimit: 4"

### Sample Output
Kalyans-MacBook-Pro:62-GKE-Kubernetes-Job-backofflimit kdaida$ kubectl get pods
NAME         READY   STATUS   RESTARTS   AGE
job1-c88pf   0/1     Error    0          3m14s
job1-dxlzq   0/1     Error    0          3m34s
job1-jsb6n   0/1     Error    0          2m44s
job1-pxn5t   0/1     Error    0          2m29s

# Describe Pod
kubectl describe pod <POD-NAME>

# List Jobs
kubectl get jobs
Observation: 
1. We can see job is not completed "0/1" and not "1/1"

# Describe Job
kubectl describe job job1
Observation:
1. Review the Pod Statuses
Pods Statuses:    0 Active (0 Ready) / 0 Succeeded / 4 Failed
```

## Step-04: Delete the Job
```t
# Delete the Job
kubectl delete job job1
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