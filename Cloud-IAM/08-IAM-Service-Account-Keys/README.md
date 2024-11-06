# Title: Google Cloud IAM - Create Service Accounts Keys

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to create Cloud IAM Service Accounts Keys
## Step-01: Introduction
- Create Service Account Keys

## Step-02: Create a Service Account
```t
# Set Environment variables
SA_NAME=mysa601
PROJECT_ID=gcplearn9

# Create a Service Account
gcloud iam service-accounts create $SA_NAME \
  --description="Service Account for VM Instances with Storage Admin privileges" \
  --display-name=$SA_NAME

# Grant service account an IAM role 
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="serviceAccount:$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com" \
  --role="roles/storage.admin"     
```

## Step-03: Cloud Console: Create Service Account Keys
- Go to IAM & Admin -> Service accounts -> mysa601 -> KEYS Tab
- **ADD KEY** -> Create new key
- **key type:** JSON
- Click on **CREATE**
- It will download the JSON file

## Step-04: gcloud: Create Service Account Keys
```t
# Create IAM Service account keys
gcloud iam service-accounts keys create key.json \
            --iam-account=$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com
```

## Step-05: For local development environments or On-premise applications
- Set the environment variables GOOGLE_APPLICATION_CREDENTIALS to the path of service account key JSON file
```t
# Set environment vairbale
GOOGLE_APPLICATION_CREDENTIALS=PATH-TO-KEY-JSON-FILe
GOOGLE_APPLICATION_CREDENTIALS=key.json
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