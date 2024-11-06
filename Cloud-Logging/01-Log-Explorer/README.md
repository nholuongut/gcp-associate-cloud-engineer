# Title: GCP Google Cloud Platform - Build Cloud Logging Queries

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to create Cloud Logging Queries 
## Step-01: Introduction
- Create VM Instance with webserver installed
- Instal Ops Agent
- How to build Cloud Logging Queries ?
- How to view logs Historgram view ?

## Step-02: Create VM Instance with sample webserver installed
```t
# Set Project
gcloud config set project PROJECT_ID
gcloud config set project gcplearn9

# Create VM Instance
gcloud compute instances create myvm1 \
  --zone=us-central1-a \
  --machine-type=e2-micro \
  --network-interface=subnet=default \
  --tags=http-server \
  --metadata-from-file=startup-script=webserver-install.sh 

# List Compute Instances
gcloud compute instances list   
```

## Step-03: Install OpsAgent in the VM Instance
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

## Step-04: Logging Queries - How to build using Log Fields
```t
# Review All log entries of a specific VM Instance
resource.type="gce_instance"
resource.labels.instance_id="1007443947412164107"

# Review syslog
resource.type="gce_instance"
resource.labels.instance_id="1007443947412164107"
log_name="projects/gcplearn9/logs/syslog"

# Review Warning Logs
resource.type="gce_instance"
resource.labels.instance_id="1007443947412164107"
severity=WARNING
```

## Step-05: Histogram View
- Enable Histogram view 

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



