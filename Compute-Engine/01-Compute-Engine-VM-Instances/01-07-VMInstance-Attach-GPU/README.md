# Title: Google Cloud - Attach GPU to VM Instance

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to Attach GPU to VM Instance on Google Cloud Platform GCP
## Step-01: Introduction
- Create a VM with GPU attached to it

## Step-02: Request for GPU Quota
- Go to IAM & Admin -> Quotas & System Limits
- Go to Compute Engine API -> Search for **GPUS_ALL_REGIONS** 
- Select **GPU (all regions) -> EDIT QUOTA
- **New Value:** 1
- Click on **DONE**
- Click on **SUBMIT REQUEST**
- Verify email about approval request

## Step-03: Create a VM Instance with attached GPUs
- Go to Compute Engine -> VM Instances -> CREATE INSTANCE
- **Name:** gpu-vm1
- **Region:** us-central1
- **Zone:** us-central1-b
- **Machine Configuration:** GPU
- **GPU Type:** NVIDIA T4
- **Number of GPUs:** 1
- **BOOT DISK:** SWITCH IMAGE
- **Note:** The selected image requires you to install an NVIDIA CUDA stack manually. To skip manual setup, click "Switch Image" below to use a GPU-optimized Debian OS image with CUDA support at no additional cost.
- REST ALL LEAVE TO DEFAULTS
- click on **CREATE**

## Step-04: Review VM Details
- Go to Compute Engine -> VM Instances -> gpu-vm1 -> DETAILS TAB
- Review **Machine configuration** for GPU
- Review Boot disk, we will find deeplearning Image

## Step-05: Clean-Up
- Go to Compute Engine -> VM Instances -> gpu-vm1 -> DELETE

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