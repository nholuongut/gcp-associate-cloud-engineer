# Title: GCP Google Cloud Platform - Log Analytics

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to use Log Analytics in Google Cloud Platform
## Step-01: Introduction
- Learn to use Log Analytics

## Step-02: Generate Traffic
```t
# Generate Traffic in a while loop in Cloud shell
while true; do curl http://EXTERNAL-IP; sleep 1; done
while true; do curl http://34.29.5.200; sleep 1; done
```

## Step-03: Log Analytics Query
- Go to Cloud Logging -> Explore -> Log Analytics
```t
# Log Analytics Query
SELECT
  *
FROM
  `gcplearn9.global.mylogbucket101._AllLogs`
LIMIT 10000
```

## Step-04: Create Cloud Big Query Dataset
- Go to Cloud Logging -> Configure -> Log Storage -> mylogbucket101 -> Edit
- **Create a new BigQuery dataset that links to this bucket:** CHECK IT
- **BigQuery Dataset Name:** mylogbucket101ds1
- Click on **Update Bucket**


## Step-05: Cloud Big Query 
- Go to Cloud BigQuery
```t
# Query
SELECT * FROM `gcplearn9.mylogbucket101._AllLogs` LIMIT 1000
```

## Step-06: Clean-Up
```t
# Delete VMs
gcloud compute instances delete myvm1 --zone=us-central1-a

# Delete Log Sink
Go to -> Cloud Logging -> Configure -> Log Router -> mysink1 -> Delete sink

# Delete Log Storage
Go to -> Cloud Logging -> Configure -> Log Storage -> mylogbucket101 -> Delete Bucket 

# Delete BigQuery Datasets
Go to -> BigQuery -> myvmlogs -> Delete

# Delete Alert Policies
Go to -> Cloud Logging -> Detect -> Alerting -> Policies -> DELETE ALL POLICIES
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