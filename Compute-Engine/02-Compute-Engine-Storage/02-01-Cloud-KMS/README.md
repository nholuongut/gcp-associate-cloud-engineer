# Title: Google Cloud Key Management Service

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn about Google Cloud Key Management Service

## Step-01: Introduction
- Understand about Encryption Types
    - Symmetric Key Encryption
    - Asymmetric Key Encryption
- Understand about Cloud KMS   

## Step-02: Create Key Ring
- Go to Security -> Data Protection -> Key Management -> 
- Click on **CREATE KEY RING**
- **Key Ring Name:** my-keyring1
- **Location type:** Region (Lower latency within single region)
- **Region:** us-central1
- Click on **CREATE**

## Step-03: Create Key
- Go to Security -> Key Management -> my-keyring1
- Click on **CREATE KEY**
### Name and protection level
- **Key Name:** my-symkey-1
- **Protection Level:** software
### key material
- **Generated Key:** checked
### Purpose and Algorithm
- **Purpose:** Symmetric encrypt/decrypt
- **Algorithm:** Google symmetric key (leave to default)
### Versions
- **Key Rotation period:** 90 days (leave to default)
- **Starting on:** leave to default
### Additional Settings
- **Duration of 'scheduled for destruction' state:** 5 (default 30 days)
- REST ALL LEAVE TO DEFAULTS
- Click on **CREATE**

## Step-04: Review the newly created Symmetric Key
- Go to Security -> Key Management -> my-keyring1 -> my-symkey-1
- Review options like
    - Disable
    - Destroy

## Step-05: Review Key creation for Assymetric Encryption
- Assymetric Sign
- Assymetric Decrypt    


## Step-06: gcloud: Create KMS Key ring and Keys
```t
# Create KMS Keyring - Regional
gcloud kms keyrings create my-keyring2 --location us-central1

# Create KMS Keyring - Global
gcloud kms keyrings create my-keyring3 --location global

# Create a symmetric encryption key with custom automatic rotation 
gcloud kms keys create KEY_NAME \
    --keyring KEY_RING \
    --location LOCATION \
    --purpose "encryption" \
    --protection-level "software" \
    --destroy-scheduled-duration SCHEDULED_FOR_PERMANENT_DESTRUCTION_AFTER_DAYS

# Replace Values
gcloud kms keys create my-symkey-2 \
    --keyring my-keyring2 \
    --location us-central1 \
    --purpose "encryption" \
    --protection-level "software" \
    --destroy-scheduled-duration "2d"    

# List Keys
gcloud kms keys list --keyring my-keyring2 --location us-central1

# Describe Key
gcloud kms keys describe my-symkey-2 --keyring my-keyring2 --location us-central1
```

## Step-07: Clean-Up
```t
# Destroy my-symkey-2
- Go to Security -> Key Management Service -> my-keyring2 -> my-symkey-2 -> Destroy all key version material
- Click on "SCHEDULE DESTRUCTION"

# my-symkey-1
We will use this "my-symkey-1" from my-keyring1 in next demo, so we will not destroy it
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

