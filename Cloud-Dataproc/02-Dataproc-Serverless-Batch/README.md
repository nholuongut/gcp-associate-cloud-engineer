# Dataproc Serverless - Batch Jobs

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- Create a Dataproc Serverless Batch Job

## Step-02: Pre-requisite-1: Enable Private Google Access in VPC Subnet
- Goto VPC Networks -> default -> SUBNETS -> PICK us-central1 region SUBNET 
- Edit Subnet
- Private Google Access: ON
- Click on **SAVE**

## Step-03: Pre-requisite-2: Verify firewall rule default-allow-internal	
- Goto VPC Networks -> default -> FIREWALLS
- Verify if **default-allow-interna** is present

## Step-04: Create Dataproc Serverless Batch Job
- Goto Dataproc -> Serverless -> Batches -> Create
### Batch Info
- Batch ID: sort-words-101
- Region: us-central1
### Container
- Batch Type: PySpark
- Runtime version: USE LATEST  **2.1 (Spark 3.4, Java 17, Scala 2.13)**
- Main Python file: gs://mybucket1071/sort-words.py
### Network Configuration
- Networks in this project: select
- Primary network: default
- Subnetwork: default
- REST ALL LEAVE TO DEFAULTS
- Click on **SUBMIT**

## Step-04: Verify Job logs
- Goto Dataproc -> Serverless -> Batches -> sort-words-101

## Step-05: Delete the Batch Job after completion
- Goto Dataproc -> Serverless -> Batches -> sort-words-101 -> DELETE

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