# Title: GCP Google Cloud Platform - Cloud Monitoring Alerts

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to deploy Cloud Monitoring Alerts
## Step-01: Introduction
- Install OpsAgent
- Cloud Monitoring Alerts

## Step-02: Install OpsAgent in the VM Instance
```t
# Verify VM Metrics
1. Go to Compute Engine -> VM Instances -> myvm1 -> OBSERVABILITY Tab
2. Click on CPU, PROCESS, MEMORY
3. It shows the message "Requires Ops Agent"

# Connect SSH to VM
gcloud compute ssh --zone "us-central1-a" "myvm1" --project "gcplearn9"

# Download Ops Agent
curl -sSO https://dl.google.com/cloudagents/add-google-cloud-ops-agent-repo.sh

# Install Ops Agent
sudo bash add-google-cloud-ops-agent-repo.sh --also-install
sudo apt list --installed | grep google-cloud-ops-agent

# Verify Ops Agent Status
sudo systemctl status google-cloud-ops-agent"*"

# Restarting Agent (Optional)
sudo service google-cloud-ops-agent restart

# Verify if OPS Agent installed successfully
Go to Cloud Monitoring -> Dashboards -> VM Instances (Predefined)
Verify if OpsAgent status
```

## Step-03: Review Recommended Alerts and Create Alerts
- Go to Compute Engine -> VM Instances -> OBSERVABILITY -> RECOMMENDED ALERTS
- Select Alert Policies
  - VM Instance - High CPU Utilization (myvm1)
  - VM Instance - High Disk Utilization (myvm1)
  - VM Instance - Host Error Log Detected (myvm1)
  - VM Instance - High Memory Utilization (myvm1)
- Configure notifications 
  - **Use notification channel:** enabled 
  - **Notification channel:** select channel 
- Click on **CREATE**

## Step-04: View Alert Policies
- Review all the alert policies

## Step-05: Review Log based alerts
- Review **VM Instance - Host Error Log Detected (myvm1)**

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