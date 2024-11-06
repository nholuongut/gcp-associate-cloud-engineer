# Cloud Storage - Security with ACLs

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- Manage Bucket Level ACLs
- Manage Object Level ACLs

## Step-02: Manage Bucket Level ACLs
```t
# Set Project
gcloud config set project PROJECT_ID
gcloud config set project gcplearn9

# Create Bucket
gcloud storage buckets create gs://mybucket1041

# Describe Cloud Storage Bucket
gcloud storage buckets describe gs://mybucket1041 

# List Default ACLs for a Cloud Storage Bucket
gcloud storage buckets describe gs://mybucket1041 --format="yaml(default_acl)"

# Apply Predefined Object ACL at Bucket Level
# private, bucketOwnerRead, bucketOwnerFullControl, projectPrivate, authenticatedRead, publicRead, publicReadWrite
gcloud storage buckets update gs://BUCKET_NAME --predefined-default-object-acl=PREDEFINED_ACL
gcloud storage buckets update gs://mybucket1041 --predefined-default-object-acl=publicRead

# List Default ACLs for a Cloud Storage Bucket
gcloud storage buckets describe gs://mybucket1041 --format="yaml(default_acl)"

# Upload Files
gcloud storage cp myhtmlfiles/*.html gs://mybucket1041

# Verify by accessing files using browser (Unauthenticated or public urls)
1. Go to mybucket 1013 -> COPY URL (for each file)
https://storage.googleapis.com/mybucket1041/v1-index.html
https://storage.googleapis.com/mybucket1041/v2-index.html
https://storage.googleapis.com/mybucket1041/v3-index.html
https://storage.googleapis.com/mybucket1041/v4-index.html
```

## Step-03: Manage Object Level ACLs
```t
# Create Bucket
gcloud storage buckets create gs://mybucket1042

# Upload Files
gcloud storage cp myhtmlfiles/*.html gs://mybucket1042

# Describe Object
gcloud storage objects describe gs://mybucket1042/v1-index.html --format="yaml(acl)"

# List acls associated with a specific Object
gcloud storage objects describe gs://mybucket1042/v1-index.html --format="yaml(acl)"

# Apply Predefined Object ACL at Object Level
gcloud storage objects update gs://BUCKET_NAME/OBJECT_NAME --predefined-acl=PREDEFINED_ACL_NAME
gcloud storage objects update gs://mybucket1042/v1-index.html --predefined-acl=publicRead

# List acls associated with a specific Object
gcloud storage objects describe gs://mybucket1042/v1-index.html --format="yaml(acl)"

# Review Bucket Settings and Objects
Go to Cloud Storage -> mybucket1042

# Access v1-index.html
https://storage.googleapis.com/mybucket1042/v1-index.html  
Observation: Should be accessible

# Access v2-index.html
https://storage.googleapis.com/mybucket1042/v2-index.html
Observation: Should throw Access Denied Error
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