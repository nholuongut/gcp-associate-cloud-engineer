# Cloud Storage - Security with UBLA and IAM

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- Manage Bucket Level IAM Policies

## Step-02: Manage Bucket Level IAM Policies
```t
# Create Bucket
gcloud storage buckets create gs://mybucket1043 --uniform-bucket-level-access
Important Note: 
1. If we want to manage access for individual objects, then we need to switch Access Control to Fine Grained. 

# Upload Files
gcloud storage cp myhtmlfiles/*.html gs://mybucket1043

# Get IAM Policy (Before apply IAM Role)
gcloud storage buckets get-iam-policy gs://mybucket1043

# To make all objects in your bucket readable to anyone on the public internet using IAM Members and Roles
gcloud storage buckets add-iam-policy-binding  gs://mybucket1043 --member=allUsers --role=roles/storage.objectViewer

# Get IAM Policy (After apply IAM Role)
gcloud storage buckets get-iam-policy gs://mybucket1043

# Review Bucket Settings and Objects
Go to Cloud Storage -> mybucket1043

# Access URLs
https://storage.googleapis.com/mybucket1043/v1-index.html  
Observation: Should be accessible
```

## Step-05: CleanUp - Delete all Cloud Storage Buckets
```t
# Delete All files in Buckets and also Delete Bucket
gcloud storage rm -r gs://mybucket1041
gcloud storage rm -r gs://mybucket1042
gcloud storage rm -r gs://mybucket1043
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