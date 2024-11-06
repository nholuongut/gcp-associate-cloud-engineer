# Title: Google Cloud Compute Engine Hyperdisks

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to Compute Engine Hyperdisks

## Step-01: Introduction
- Understand Hyperdisks
- Create Hyperdisk
 
## Step-02: Create Hyperdisk
- Go to Compute Engine -> Storage -> Disks
- **Name:** hyperdisk1
- **# Description:** hyperdisk1
- **Location:** 
  - **Region:** us-central1 (Iowa)
  - **Zone:** us-central1-a
- **Disk source type:** Blank disk
- **Disk settings:** 
  - **Disk type:** Hyperdisk Balanced
  - **Size:** 100
  - **Provisioned IOPS:** 3600 (LEAVE TO DEFAULTS)
  - **Provisioned throughput:** 290 (LEAVE TO DEFAULTS)
- **Storage pool:** leave UNCHECKED  
- **Snapshot schedule (Recommended):**  leave empty 
- **Encryption:** Google managed encryption 
- Click on **CREATE**
```t
# Create Hyperdisk Balanced
gcloud compute disks create hyperdisk2 \
    --project=gcplearn9 \
    --type=hyperdisk-balanced \
    --description=hyperdisk1 \
    --size=100GB \
    --zone=us-central1-a \
    --provisioned-iops=3600 \
    --provisioned-throughput=290
```

## Step-03: Review the Hyperdisk
- Go to Compute Engine -> Storage -> Disks -> hyperdisk1

## Step-04: Clean-Up
```t
# Delete Hyperdisk
gcloud compute disks delete hyperdisk1 --zone us-central1-a
```
## Additional Reference
- https://cloud.google.com/compute/docs/disks/hyperdisks

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