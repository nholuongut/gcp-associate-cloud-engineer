# Google Cloud - Regional Application Load Balancer HTTP

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- **Pre-requisite-1:** Create Instance Templates, Create Managed Instance Groups as part of Section `Cloud-LoadBalancer/01-Managed-Instance-Groups`
- Create Regional Application Load Balancer - HTTP

## Step-02: **Pre-requisite-2:** Reserve proxy-only subnet exclusively for regional load balancing proxies.
- Goto VPC Networks -> vpc3-custom -> SUBNETS -> **ADD SUBNET**
- **Name:** lb-subnet-proxyonly-us-central1
- **# Description:** lb-subnet-proxyonly-us-central1
- **Region:** us-central1
- **Purpose:** Regional Managed Proxy
- **Role:** Active
- **IPv4 Range:** 10.129.0.0/23
- Click on **ADD**

## Step-03: **Pre-requisite-3:** Create Firewall rule 
- **fw-allow-proxy-only-subnet:** An ingress rule that allows connections from the proxy-only subnet to reach the backends.
```t
# Firewall Rule: Allow connections from Proxy Only Subnets for All Instances in the network
gcloud compute firewall-rules create vpc3-custom-allow-proxy-only-subnet \
    --network=vpc3-custom \
    --action=allow \
    --direction=ingress \
    --source-ranges=10.129.0.0/23 \
    --rules=tcp:80,tcp:443,tcp:8080
```

## Step-04: **Pre-requisite-4:** Create Regional Health Check - HTTP
```t
# Create Regional Health Check
gcloud compute health-checks create http regional-http-health-check --port=80 --region=us-central1 
```

## Step-05: Create Regional Application Load Balancer - HTTP
- Go to Network Services -> Load Balancing -> CREATE LOAD BALANCER
- **Select Application Load Balancer (HTTP/S):** START CONFIGURATION
- **Internet facing or internal only:** 
From Internet to my VMs or serverless services
- **Global or Regional:** Regional external Application Load Balancer
- **Load Balancer name:** regional-lb-external-http
- **Region:** us-central1
- **Network:** vpc3-custom
### Frontend Configuration
- Click on **ADD FRONTEND IP AND PORT**
- **Name:** frontend-http
- **# Description:** frontend-http
- **Protocol:** HTTP
- **IP Version:** IPv4
- **IP Address:** regional-lb-ip1 **CREATE NEW EXTERNAL STATCI IP**
- **Port:** 80
- Click on **DONE**
### Backend Configuration
- CLick on **CREATE A BACKEND SERVICE**
- **Name:** regional-mybackend-svc1
- **# Description:** regional-mybackend-svc1
- **Backend type:** Instance Group
- **Protocol:** HTTP
- **Named Port:** webserver80 (AUTO-POPULATED WHEN BACKEND IS SELECTED AS mig1-lbdemo)
- **Timeout:** 30
- **BACKENDS**
  - **Instance Group:** zmig-us-1
  - **Port Numbers:** 80
  - REST ALL LEAVE TO DEFAULTS
  - Click on **DONE**
  - **Instance Group:** zmig-us-2
  - **Port Numbers:** 80
  - REST ALL LEAVE TO DEFAULTS
  - Click on **DONE** 
- **Health Check:** regional-http-health-check
- **Security:**
  - **Cloud Armor backend security policy:** NONE
- Click on **CREATE**  
### Routing Rules
- **Mode:** Simple host and path rule
- REST ALL LEAVE TO DEFAULTS
### Review and Finalize
- Review all settings
- Click on **CREATE**

## Step-06: Verify Load Balancer
- Go to Network Services -> Load Balancing -> global-lb-external-http
- Review the Tabs
  - LOAD BALANCERS 
  - BACKENDS
  - FRONTENDS

## Step-07: Access Application using LB IP on browser
- **Important Note:** WAIT FOR 3 to 5 Minutes before Load Balancer is fully operational
```t
# Access Application
http://LB-IP
```

## Step-08: Delete Load Balancer
- Delete the  Load balancer created as part of this demo.

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