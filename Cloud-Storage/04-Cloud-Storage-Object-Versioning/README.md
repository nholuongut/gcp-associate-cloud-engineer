# Cloud Storage - Object Versioning

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
1. Create Cloud Storage Bucket
2. Enable Object Versioning
3. Upload and Verify OBJECT VERSIONING
4. Also verify RESTORE operation

## Step-02: Create Cloud Storage Bucket, Enable OBJECT VERSIONING
```t
# Create Cloud Storage Bucket
gcloud storage buckets create gs://mybucket1012

# Enable Object Versioning
Goto Cloud Storage -> mybucket1012 -> PROTECTION Tab
Enable OBJECT VERSIONING

# Review OLM (LIFECYCLE) Rules creatd by default
Goto Cloud Storage -> mybucket1012 -> LIFECYCLE Tab
1. Delete object: Object is noncurrent 2+ newer versions
2. Delete object: 7+ days since object became noncurrent
```
## Step-03: Upload multiple versions of file and Verify OBJECT VERSIONING
```t
# V1: Create, Upload and Verify
1. echo "myapp v1" > version-demo.txt
2. gcloud storage cp version-demo.txt gs://mybucket1012
3. Go to Cloud Storage -> mybucket1012 -> version-demo.txt -> VERSION HISTORY Tab
4. Verify current version by accessing object
Goto Cloud Storage -> mybucket1012 -> version-demo.txt -> LIVE OBJECT Tab -> Authenticated URL 
Observation: should see "myapp v1"


# V2: Create, Upload and Verify
1. echo "myapp v2" > version-demo.txt
2. gcloud storage cp version-demo.txt gs://mybucket1012
3. Go to Cloud Storage -> mybucket1012 -> version-demo.txt -> VERSION HISTORY Tab
4. Verify current version by accessing object
Goto Cloud Storage -> mybucket1012 -> version-demo.txt -> LIVE OBJECT Tab -> Authenticated URL 
Observation: should see "myapp v2"

# List All versions of Objects
gcloud storage ls --all-versions gs://mybucket1012
gcloud storage ls --all-versions gs://mybucket1012 --long
gcloud storage ls --all-versions gs://mybucket1012 --full
```

## Step-04: Verify by running RESTORE
```t
# Restore Object
1. Go to Cloud Storage -> mybucket1012 -> version-demo.txt -> VERSION HISTORY Tab
2. Click on RESTORE for older version "myapp v1"
3. Observation: New version of object should be created as LIVE OBJECT
4. Verify current version by accessing object
Goto Cloud Storage -> mybucket1012 -> version-demo.txt -> LIVE OBJECT Tab -> Authenticated URL 
Observation: should see "myapp v1"
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