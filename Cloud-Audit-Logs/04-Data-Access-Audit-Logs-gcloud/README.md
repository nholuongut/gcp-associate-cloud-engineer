# Cloud Audit Logs - Data Access Audit Logs - gcloud

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- We are going to learn about **Data Access Audit Logs**
- We are going to enable it using **gcloud set-iam-policy**

## Step-02: Get current IAM Policy
```t
# Take backup of current IAM Policy
gcloud projects get-iam-policy gcplearn9 --format=yaml >> v1-policy.yaml

# Make a copy of v1-policy.yaml
cp v1-policy.yaml v2-policy.yaml
```

## Step-03: Review YAML for Enabling Audit Logs for Cloud SQL
```yaml
- auditLogConfigs:
  - logType: ADMIN_READ
  - logType: DATA_READ
  - logType: DATA_WRITE
  service: cloudsql.googleapis.com
```

## Step-04: Update v2-policy.yaml file 
- Update **v2-policy.yaml** with Cloud SQL Audit logs enablement
```yaml
- auditLogConfigs:
  - logType: ADMIN_READ
  - logType: DATA_READ
  - logType: DATA_WRITE
  service: cloudsql.googleapis.com
```

## Step-05: Apply the changes using set-iam-policy and verify
```t
# VERY VERY IMPORTANT NOTE
Ensure that  etag attribute in policy not changed, it will corrupt the whole project access

# Apply changes set-iam-policy
gcloud projects set-iam-policy PROJECT_ID v2-policy.yaml

# Verify the applied changes
gcloud projects get-iam-policy gcplearn9 --format=yaml 

# Verify the same 
Go to Cloud IAM -> Audit Logs -> Cloud SQL
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


