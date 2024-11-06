# Cloud Audit Logs - Data Access Audit Logs

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- We are going to learn about **Data Access Audit Logs**
- We are going to enable it using **Audit Logs** service in Cloud IAM using Google Cloud web console

## Step-02: Review IAM Policy BEFORE Audit Log Changes
```t
# Review IAM Policy - Before changes
gcloud projects get-iam-policy gcplearn9 --format=yaml
```

## Step-03: Enable Data Access Audit Logs in Cloud IAM
- Go to Cloud IAM -> Audit Logs
- Select **Compute Engine API** -> Enable
- **Admin Read**
  - Getting information about a resource (compute.images.get)
  - Listing resources (compute.instances.list)
  - Listing resources across scope (aggregated list requests) (compute.interconnectAttachments.aggregatedList)
- **Data Read**
  - Exclusively enabled for compute.instance.getSerialPortOutput)
- Click on **SAVE**


## Step-04: Review IAM Policy AFTER Audit Log Changes
```t
# Review IAM Policy - AFTER changes
gcloud projects get-iam-policy gcplearn9 --format=yaml

# FOLLOWING WILL BE ADDED TO IAM Policy
auditConfigs:
- auditLogConfigs:
  - logType: ADMIN_READ
  - logType: DATA_READ
  service: compute.googleapis.com
```

## Step-05: List VM Instances from Cloud Shell
```t
# List VM Instances
gcloud compute instances list
```

## Step-06: Review Data Access Logs in Log Explorer
- Go to Log Explorer -> Select Logs -> **data_access**
```t
# Log Query
logName="projects/gcplearn9/logs/cloudaudit.googleapis.com%2Fdata_access"
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