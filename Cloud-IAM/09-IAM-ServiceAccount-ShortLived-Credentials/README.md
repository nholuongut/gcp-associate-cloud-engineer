# Title: Google Cloud IAM - Service Accounts - Short-lived credentials

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to create Cloud IAM Service Accounts Short-lived credentials

## Step-01: Introduction
- Create Cloud IAM Service Accounts Short-lived credentials 

## Step-02: Configure Cloud Shell gcloud with Normal user
```t
# Lists accounts whose credentials have been obtained using gcloud init
gcloud auth list

# Authorize with a user account without setting up a configuration.
gcloud auth login

# Lists accounts whose credentials have been obtained using gcloud init
gcloud auth list
```

## Step-03: Assign/Verify Service Account Token Creator Role to Normal User
```t
# Assign Service Account Token Creator Role
Normal User: luongutnho@hotmail.com
Role-1: Compute Viewer
Role-2: Service Account Token Creator
```

## Step-04: Create Service Account with required roles
```t
# Create Service Account with required roles
Service Account: mystorageadmin101@gcplearn9.iam.gserviceaccount.com 
Role-1: Service Account User
Role-2: Storage Admin
```

## Step-05: Create Access Token using gcloud auth print-access-token 
- **Default Access Token lifetime:** 3600 seconds
```t
# Lists accounts whose credentials have been obtained using gcloud init
gcloud auth list
Observation: Ensure you are using the normal user luongutnho@hotmail.com

# Set Environment Variables
PROJECT_ID="gcplearn9"
BUCKET_NAME="kalyanbucket201"
REGION="us-central1"
SA_NAME="mystorageadmin101@gcplearn9.iam.gserviceaccount.com"

# Create Access Token
ACCESS_TOKEN="$(gcloud auth print-access-token --impersonate-service-account=$SA_NAME)"
echo $ACCESS_TOKEN
```

## Step-06: Create Cloud Storage Bucket
```t
# Create Cloud Storage Bucket
curl -X POST -H "Authorization: Bearer $ACCESS_TOKEN" \
     -H "Content-Type: application/json" \
     -d '{
           "name": "'"$BUCKET_NAME"'",
           "location": "'"$REGION"'"
         }' \
     "https://storage.googleapis.com/storage/v1/b?project=$PROJECT_ID"

# Verify the bucket
Goto -> Cloud Storage -> Buckets 
Observation: New bucket should be created     
```

## Step-07: Create OAuth Token with configurable lifetime for the access time
```t
# Set Environment Variables
PROJECT_ID="gcplearn9"
BUCKET_NAME="kalyanbucket202"
REGION="us-central1"
SA_NAME="mystorageadmin101@gcplearn9.iam.gserviceaccount.com"

# oauthrequest.json: Create it on CloudShell
vi oauthrequest.json 
{
  "scope": [
    "https://www.googleapis.com/auth/cloud-platform"
  ],
  "lifetime": "600s"
}

# Create Access Token
curl -X POST \
     -H "Authorization: Bearer $(gcloud auth print-access-token)" \
     -H "Content-Type: application/json; charset=utf-8" \
     -d @oauthrequest.json \
     "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/$SA_NAME:generateAccessToken"

# Obserevation:
1. OAuth Access Token is valid only for 600seconds (10minutes)     

## SAMPLE OUTPUT
{
  "accessToken": "xxxxxx",
  "expireTime": "2024-04-18T06:15:44Z"
}

# Set Access Token from the above respone
OAUTH_ACCESS_TOKEN=xxxxxx

# Verify if OAUTH_ACCESS_TOKEN set
echo $OAUTH_ACCESS_TOKEN
```

## Step-06: Create Cloud Storage Bucket
```t
# Set Environment Variables
PROJECT_ID="gcplearn9"
BUCKET_NAME="kalyanbucket202"
REGION="us-central1"

# Create Cloud Storage Bucket
curl -X POST -H "Authorization: Bearer $OAUTH_ACCESS_TOKEN" \
     -H "Content-Type: application/json" \
     -d '{
           "name": "'"$BUCKET_NAME"'",
           "location": "'"$REGION"'"
         }' \
     "https://storage.googleapis.com/storage/v1/b?project=$PROJECT_ID"

# Verify the bucket
Goto -> Cloud Storage -> Buckets 
Observation: 
1. New bucket should be created     
```

## Step-07: Other Shord-lived Credentials creation options
- [Generate OpenID Connect ID tokens](https://cloud.google.com/iam/docs/create-short-lived-credentials-delegated#sa-credentials-oidc)
- [Create a self-signed JSON Web Token (JWT)](https://cloud.google.com/iam/docs/create-short-lived-credentials-delegated#sa-credentials-jwt)
- [Create a self-signed blob](https://cloud.google.com/iam/docs/create-short-lived-credentials-delegated#sa-credentials-blob)

## Additional References
 - https://cloud.google.com/iam/docs/create-short-lived-credentials-direct

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