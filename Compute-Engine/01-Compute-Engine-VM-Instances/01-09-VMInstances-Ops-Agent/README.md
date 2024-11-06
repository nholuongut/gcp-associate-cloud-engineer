# Title: Google Cloud -  Ops Agent

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to Install and Configure Ops Agent for Monitoring and Logging on VMs in Google Cloud Platform GCP
## Step-01: Introduction
- Install Ops Agent
- Verify Monitoring and Logging

## Step-02: Install Ops Agent 
### Step-02-01: Install Ops Agent using google cloud console
- Go to Compute Engine -> VM Instances -> CREATE INSTANCE
- **Name:** demo1-opsagent
- **Observability - Ops Agent:**
  - **Install Ops Agent for Monitoring and Logging:** CHECK IT
- Click on **CREATE**

### Step-02-02: Install Ops Agent manually
```t
# Creater VM Instance
gcloud compute instances create demo2-opsagent \
  --zone=us-central1-a \
  --machine-type=e2-micro \
  --network-interface=subnet=default \
  --tags=http-server \
  --metadata-from-file=startup-script=webserver-install.sh 

# Verify VM Metrics
1. Go to Compute Engine -> VM Instances -> demo2-opsagent -> OBSERVABILITY Tab
2. Click on CPU, PROCESS, MEMORY
3. It shows the message "Requires Ops Agent"

# Connect SSH to VM
gcloud compute ssh --zone "us-central1-a" "demo2-opsagent" --project "gcplearn9"

# Download Ops Agent
curl -sSO https://dl.google.com/cloudagents/add-google-cloud-ops-agent-repo.sh

# Install Ops Agent
sudo bash add-google-cloud-ops-agent-repo.sh --also-install
sudo apt list --installed | grep google-cloud-ops-agent

# Verify Ops Agent Status
sudo systemctl status google-cloud-ops-agent"*"

# Restarting Agent (Optional)
sudo service google-cloud-ops-agent restart

## Additional Optional Commands
# Upgrading Agent
sudo bash add-google-cloud-ops-agent-repo.sh --also-install

# Uninstalling the agent (For reference only)
sudo bash add-google-cloud-ops-agent-repo.sh --uninstall
```

## Step-03: Review current VM Monitoring Metrics in Observability Tab of VM
- Go to Compute Engine -> VM Instances -> demo2-opsagent -> Click on **Observability** tab
- Review Metrics in which many metrics says they need the Monitoring agent. 
  - CPU
  - Processes
  - Memory
  - Disk -> Capacity

## Step-05: Verify the Cloud Monitoring Tool
- Go to Monitoring -> Overview
- Click on **VIEW GCE DASHBOARD** 
- Click on **VMs Dashboard**
- Verify Agent Status 
  - Ops Agent 


## Step-06: Review the following 
- Go to Monitoring -> Overview
- Click on **VIEW GCE DASHBOARD** 
- Click on **VMs Dashboard**
- Review the following tabs
  - METRICS TAB
  - LOGS TAB

## Step-07: Verify Logs in Logs Explorer
- Go to Logging -> Logging
- **Resource Name:** demo2-opsagent
- Verify Logs

## Step-08: Cleanup - Delete VMs
- Delete VMs
  - demo1-opsagent
  - demo2-opsagent

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