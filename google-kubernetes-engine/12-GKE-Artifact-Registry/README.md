# Title: GCP Google Kubernetes Engine GKE Artifact Registry

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Implement GCP Google Kubernetes Engine GKE Artifact Registry
## Step-01: Introduction
- Build a Docker Image
- Create a Docker repository in Google Artifact Registry.
- Set up authentication.
- Push an image to the repository.
- Pull the image from the repository and Create Deployment in GKE Cluster
- Access Sample Application in browser and verify

## Step-02: Create Dockefile
- **Dockerfile**
```t
FROM nginx
COPY index.html /usr/share/nginx/html
```

## Step-03: Build Docker Image
```t
# Change Directory
cd 01-Docker-Image

# Build Docker Image
docker build -t myapp1:v1 .

# List Docker Image
docker images myapp1
```

## Step-04: Run Docker Image
```t
# Run Docker Image
docker run --name myapp1 -p 80:80 -d myapp1:v1

# Access in browser
curl http://localhost

# List Running Docker Containers
docker ps

# Stop Docker Container
docker stop myapp1

# List All Docker Containers (Stopped Containers)
docker ps -a

# Delete Stopped Container
docker rm myapp1

# List All Docker Containers (Stopped Containers)
docker ps -a
```

## Step-05: Create Google Artifact Registry
- Go to Artifact Registry -> Repositories -> Create
```t
# Create Google Artifact Registry 
Name: gke-artifact-repo1
Format: Docker
Mode: Standard
Region: us-central-1
Encryption: Google-managed encryption key
Cleanup policies: Dry run (leave to defaults)
Click on Create
```

## Step-06: Configure Google Artifact Repository authentication
```t
# Google Artifact Repository authentication
## To set up authentication to Docker repositories in the region us-central1
gcloud auth configure-docker <LOCATION>-docker.pkg.dev
gcloud auth configure-docker us-central1-docker.pkg.dev
```

## Step-07: Tag & push the Docker image to Google Artifact Registry
```t
# Tag the Docker Image
docker tag myapp1:v1 <LOCATION>-docker.pkg.dev/<GOOGLE-PROJECT-ID>/<GOOGLE-ARTIFACT-REGISTRY-NAME>/<IMAGE-NAME>:<IMAGE-TAG>

# Replace Values for docker tag command 
# - LOCATION, 
# - GOOGLE-PROJECT-ID, 
# - GOOGLE-ARTIFACT-REGISTRY-NAME, 
# - IMAGE-NAME, 
# - IMAGE-TAG
docker tag myapp1:v1 us-central1-docker.pkg.dev/gcplearn9/gke-artifact-repo1/myapp1:v1

# Google Cloud Shell
gcloud auth login

# Push the Docker Image to Google Artifact Registry
docker push us-central1-docker.pkg.dev/gcplearn9/gke-artifact-repo1/myapp1:v1
```

## Step-08: Verify the Docker Image on Google Artifact Registry
- Go to Google Artifact Registry -> Repositories -> gke-artifact-repo1
- Review **myapp1** Docker Image

## Step-09: Update Docker Image and Review kube-manifests
- **Project-Folder:** 02-kube-manifests
```yaml
# Dcoker Image
image: us-central1-docker.pkg.dev/<GCP-PROJECT-ID>/<ARTIFACT-REPO>/myapp1:v1

# Update Docker Image in 01-kubernetes-deployment.yaml
image: us-central1-docker.pkg.dev/gcplearn9/gke-artifact-repo1/myapp1:v1
```

## Step-10: Deploy kube-manifests
```t
# Deploy kube-manifests
kubectl apply -f 02-kube-manifests

# List Deployments
kubectl get deploy

# List Pods
kubectl get pods

# Describe Pod
kubectl describe pod <POD-NAME>

## Observation - Verify Events command "kubectl describe pod <POD-NAME>"
### We should see image pulled from "us-central1-docker.pkg.dev/gcplearn9/gke-artifact-repo1/myapp1:v1"
Events:
  Type    Reason     Age   From               Message
  ----    ------     ----  ----               ----  Normal  Scheduled  86s   default-scheduler  Successfully assigned default/myapp1-deployment-5f8d5c6f48-pb686 to gke-standard-cluster-1-default-pool-2c852f67-46hv
  Normal  Pulling    85s   kubelet            Pulling image "us-central1-docker.pkg.dev/gcplearn9/gke-artifact-repo1/myapp1:v1"
  Normal  Pulled     81s   kubelet            Successfully pulled image "us-central1-docker.pkg.dev/gcplearn9/gke-artifact-repo1/myapp1:v1" in 4.285567138s
  Normal  Created    81s   kubelet            Created container myapp1-container
  Normal  Started    80s   kubelet            Started container myapp1-container
Kalyans-MacBook-Pro:41-GKE-Artiact-Registry kdaida$ 


# List Services
kubectl get svc

# Access Application
http://<SVC-EXTERNAL-IP>
```

## Step-11: Clean-Up
```t
# Undeploy sample App
kubectl delete -f 02-kube-manifests
```

## References
- [Google Artifact Registry](https://cloud.google.com/artifact-registry/docs/overview)

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