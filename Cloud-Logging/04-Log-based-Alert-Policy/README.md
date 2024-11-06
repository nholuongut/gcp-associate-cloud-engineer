# Title: GCP Google Cloud Platform - Create log-based Alert policy

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to create log-based alert policy in Cloud Monitoring or Cloud Logging
## Step-01: Introduction
- Unusual Request Methods: Monitor for requests using uncommon HTTP methods such as PUT, DELETE, or CONNECT, which may indicate attempts to exploit less common vulnerabilities or misconfigurations.
- Create a log-based alert when we find HTTP methods PUT, DELETE, CONNECT in Nginx Acess logs
- Review the incidents in **Alerting**

## Step-02: Generate HTTP Traffic for HTTP methods PUT, DELETE, CONNECT
```t
# HTTP METHODS simulation using curl
curl -X PUT http://34.27.233.153
curl -X DELETE http://34.27.233.153
curl -X CONNECT http://34.27.233.153

# Generate Traffic in a while loop in Cloud shell
while true; do curl -X PUT http://34.27.233.153; sleep 1; done
while true; do curl -X DELETE http://34.27.233.153; sleep 1; done
while true; do curl -X CONNECT http://34.27.233.153; sleep 1; done
```

## Step-03: Logs Explorer: Search for PUT, DELETE, CONNECT HTTP METHODS
```t
# Search for HTTP Methods PUT, CONNECT, DELETE in nginx access logs
resource.type="gce_instance"
log_id("nginx_access")
httpRequest.requestMethod="PUT" OR httpRequest.requestMethod="DELETE" OR httpRequest.requestMethod="CONNECT"
labels."compute.googleapis.com/resource_name"="myvm1"
```

## Step-03: Create Log based Alert policy
- Go to -> Cloud Logging / Cloud Monitoring -> Logs Explorer 
- Create Alert from Logs Explorer screen
- Click on **Create Alert**
### Alert Details
- **Alert Policy Name:** suspicious-http-methods
- **Policy Severity Level:** Critical
- **Documentation:** leave empty
- Click on **NEXT**
### Choose logs to include in the alert
- **Define log entries to alert on:** 
```t
# Search for HTTP Methods PUT, CONNECT, DELETE in nginx access logs
resource.type="gce_instance"
log_id("nginx_access")
httpRequest.requestMethod="PUT" OR httpRequest.requestMethod="DELETE" OR httpRequest.requestMethod="CONNECT"
labels."compute.googleapis.com/resource_name"="myvm1"
```
- Click on **NEXT**
### Set notification frequency and autoclose duration
- **Time between notifications:** 5 min
- **Incident autoclose duration:** 7 days
- Click on **NEXT**
### Who should be notified? (optional)
- **Notiication Channels:** gcpuser08
- Click on **SAVE**

## Step-04: Verify Incidents
- Go to Cloud Logging or Cloud Monitoring -> Detect -> Alerting
- Verify **Incidents**
- Verify **email id for sending incidents**

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
