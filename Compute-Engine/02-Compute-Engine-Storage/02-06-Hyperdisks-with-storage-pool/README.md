# Title: Google Cloud Compute Engine Hyperdisks with Storage Pools

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to create Compute Engine Hyperdisks storage pools

## Step-01: Introduction
- Understand Hyperdisk Storage pools
- Review the options to create Storage pool
- **Important Note:** We are not going to create storage pool, it is going to charge us heavily, so we will only explore the options to create it

## Step-02: Create Storage Pool
- Go to Compute Engine -> Storage -> Storage Pool
- **Name:** storage-pool-1
- **Location:**
  - **Region:** us-central1
  - **Zone:** us-central1-a
- **Pool type:** Hyperdisk Balanced
- **Capacity Type:** Advanced capacity
- **Storage pool capacity:** 10GB
- **Provisioned IOPs:** 10000
- **Provisioned Throughput:** 1024
- Click on **SUBMIT**
```t
# Create Compute Engine Storage Pool
gcloud compute storage-pools create storage-pool-1 \
  --project=gcplearn9 \
  --provisioned-capacity=10240 \
  --storage-pool-type=hyperdisk-balanced \
  --zone=projects/gcplearn9/zones/us-central1-a \
  --provisioned-iops=10000 \
  --provisioned-throughput=1024
```
 
## Additional Reference
- https://cloud.google.com/compute/docs/disks/storage-pools

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