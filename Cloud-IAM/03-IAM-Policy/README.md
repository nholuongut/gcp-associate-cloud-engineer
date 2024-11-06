# Title: Google Cloud IAM - Master IAM Policies

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to use Google Cloud IAM Policies
## Step-01: Introduction
- Learn the following about IAM Policies
  - get-iam-policy
  - add-iam-policy-binding
  - remove-iam-policy-binding

## Step-02: Get IAM Policy Command
```t
# Get IAM Policy 
gcloud <resource-type> get-iam-policy <resource-id> 
gcloud projects get-iam-policy gcplearn9

# Get IAM Policy with format
gcloud <resource-type> get-iam-policy <resource-id> 
gcloud projects get-iam-policy gcplearn9 --format=json
gcloud projects get-iam-policy gcplearn9 --format=yaml
```
## Step-03: Login to Google Cloud with new user luongutnho@hotmail.com
- Open in New incognito window
- [Login to Google Cloud](https://cloud.google.com)
  - **Username:** luongutnho@hotmail.com
  - **Password:** XXXXXXXX
- Select Project **gcplearn9**
- Access **Cloud Storage Buckets Service**
- **Observation-1:** luongutnho@hotmail.com dont have access to Cloud Storage Buckets Service don't have 
```t
# ERROR MESSAGE
You need additional access to the project:  gcplearn9
To request access, contact your project administrator and provide them a copy of the following information:

Troubleshooting info:
  Principal: luongutnho@hotmail.com
  Resource: gcplearn9
  Troubleshooting URL: console.cloud.google.com/iam-admin/troubleshooter;permissions=storage.buckets.list;principal=luongutnho@hotmail.com;resources=%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2Fgcplearn9/result

Missing or denied permissions:
  storage.buckets.list
```

## Step-04: Add IAM Policy Binding
```t
# Set Project and User (UPDATE YOUR PROJECT AND USER DETAILS HERE)
PROJECTID=gcplearn9
USERID=luongutnho@hotmail.com

# Add IAM Policy Binding
gcloud <resource-type> add-iam-policy-binding <resource-id> --member <principal> --role=<roleid>
gcloud projects add-iam-policy-binding $PROJECTID --member user:$USERID --role=roles/storage.admin

# Get IAM Policy for the Project
gcloud projects get-iam-policy gcplearn9
```

## Step-05: Verify access to Cloud Storage Service
- Open in New incognito window
- [Login to Google Cloud](https://cloud.google.com)
  - **Username:** luongutnho@hotmail.com
  - **Password:** XXXXXXXX
- Select Project **gcplearn9**
- Access **Cloud Storage Buckets Service**
- **Observation-1:** luongutnho@hotmail.com should have access to Cloud Storage Buckets Service

## Step-06: Remove IAM Binding
```t
# Set Project and User (UPDATE YOUR PROJECT AND USER DETAILS HERE)
PROJECTID=gcplearn9
USERID=luongutnho@hotmail.com

# Add IAM Policy Binding
gcloud <resource-type> remove-iam-policy-binding <resource-id> --member <principal> --role=<roleid>
gcloud projects remove-iam-policy-binding $PROJECTID --member user:$USERID --role=roles/storage.admin

# Get IAM Policy for the Project
gcloud projects get-iam-policy gcplearn9
```

## Step-07: Verify access to Cloud Storage Service
- Open in New incognito window
- [Login to Google Cloud](https://cloud.google.com)
  - **Username:** luongutnho@hotmail.com
  - **Password:** XXXXXXXX
- Select Project **gcplearn9**
- Access **Cloud Storage Buckets Service**
- **Observation-1:** luongutnho@hotmail.com should not have access to Cloud Storage Buckets Service

## Step-08: Delete VM Instance
```t
# Delete VM instance
gcloud compute instances delete vm1 --zone us-central1-a
```

## References 
- https://cloud.google.com/iam/docs/principal-identifiers
- https://cloud.google.com/sdk/gcloud/reference/iam/policies/create

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