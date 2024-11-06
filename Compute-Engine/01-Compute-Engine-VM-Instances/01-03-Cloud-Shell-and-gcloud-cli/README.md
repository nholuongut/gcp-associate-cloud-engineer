# Title: Google Cloud - Use Cloud Shell and gcloud CLI

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to run gcloud CLI commands in Google Cloud Shell
## Step-01: Introduction
- Perform following tasks using gcloud CLI
  - Create VM Instance with startup-script and tags
  - Update VM Instance
  - Stop and Start VM Instance
  - Delete VM Instance

## Step-02: Create VM using gcloud CLI
- **TAGS:** Tags allow  network firewall rules and routes to be applied to specified VM instances
- **Important Note:** Upload webserver-install.sh to Google Cloud shell if running gcloud commands on cloud shell
- [gcloud Documentation](https://cloud.google.com/sdk/gcloud/reference/compute/instances)
```t
# Set Project
gcloud config set project PROJECT_ID
gcloud config set project gcplearn9

# Create VM Instance
gcloud compute instances create demo3-vm-gcloud \
  --zone=us-central1-a \
  --machine-type=e2-micro \
  --network-interface=subnet=default \
  --tags=http-server \
  --metadata-from-file=startup-script=webserver-install.sh 

# List Compute Instances
gcloud compute instances list   

## Optional Commands - For reference
# To list instances with their respective status and tags, run:
gcloud compute instances list --format='table(name,status,tags.list())'

# To list instances tagged with a specific tag, tag1, run:
gcloud compute instances list --filter='tags:http-server'
```
## Step-03: Stop and Start a VM Instance
```t
# Stop VM Instance
gcloud compute instances stop demo3-vm-gcloud --zone=us-central1-a
gcloud compute instances list --filter='name:demo3-vm-gcloud'

# Start VM Instance
gcloud compute instances start demo3-vm-gcloud --zone=us-central1-a
gcloud compute instances list --filter='name:demo3-vm-gcloud'
```

## Step-04: Update VM using gcloud CLI
```t
# Update VM: Enable deletion protection
gcloud compute instances update demo3-vm-gcloud \
    --zone=us-central1-a \
    --deletion-protection

# Delete VM
gcloud compute instances delete demo3-vm-gcloud --zone=us-central1-a 

## ERROR MESSAGE
ERROR: (gcloud.compute.instances.delete) Could not fetch resource:
 - Invalid resource usage: 'Resource cannot be deleted if it's protected against deletion. 

# Update VM: Disable deletion protection
gcloud compute instances update demo3-vm-gcloud \
    --zone=us-central1-a \
    --no-deletion-protection

# Delete VM
gcloud compute instances delete demo3-vm-gcloud --zone=us-central1-a 
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