# Title: GCP Google Cloud Platform - Log Storage

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to create Log storage buckets, log sinks for storing logs
## Step-01: Introduction
- Create Log Storage Bucket
- Create Log Sinks
- Configure Nginx logs to newly created log storage bucket

## Step-02: Create Log Storage Bucket
-  Go to Cloud Logging or Cloud Monitoring -> Configure -> Logs Storage -> **Create log bucket**
### Bucket details
- **Name:** mylogbucket101
- **# Description:** Log bucket storage 
- **Upgrade to use Log Analytics:** enable it
- **Create a new BigQuery dataset that links to this bucket:** enable it
- **BigQuery dataset name:** myvmlogs
- **Select log bucket region:** global
### Set the retention period
- **Retention period:** 30 days
- Click on **Create bucket**

## Step-03: Create Sink
-  Go to Cloud Logging or Cloud Monitoring -> Configure -> Logs router -> **Create sink**
### Sink details
- **Sink name:** mysink1
- **Sink # Description:** push nginx logs
- Click **NEXT**
### Sink destination
- **Select sink service:** Logging Bucket
- **Select a log bucket:** projects/gcplearn9/locations/global/buckets/mylogbucket101
- Click **NEXT**
### Choose logs to include in sink
- **Build inclusion filter**
```t
# Build inclusion filter (Optional)
resource.type="gce_instance"
(log_id("nginx_access") OR log_id("nginx_error"))
```
- Click **NEXT**
### Choose logs to filter out of sink (optional)
- LEAVE TO DEFAULT: NO EXCLUSION FILTER
- Click on **CREATE SINK**

## Step-04: Generate Traffic
```t
# Generate Traffic in a while loop in Cloud shell
while true; do curl http://EXTERNAL-IP; sleep 1; done
while true; do curl http://34.171.101.170; sleep 1; done
```

## Step-05: Verify Logs in this bucket
- Go to Cloud Logging or Cloud Monitoring -> Configure -> Log Storage -> mylogbucket101 -> **View logs in the bucket**

## Step-06: View bucket usage data
- Go to Cloud Logging or Cloud Monitoring -> Configure -> Log Storage -> mylogbucket101 -> **View usage data for this bucket**

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