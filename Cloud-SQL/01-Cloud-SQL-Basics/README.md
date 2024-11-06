# Cloud SQL - Basics

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- Create Cloud SQL MySQL Instance 
- Create and manage Databases in Cloud SQL Instances
- Perform the above tasks using Web Console and gcloud CLI

## Step-02: Create MySQL Database Instances
### Step-02-01: Using Web Console
- Go to Cloud SQL -> MySQL
- **Instance ID:** mydb1
- **Password:** dbpassword11
- **Database Version:** MySQL 8.0
- **Choose a Cloud SQL edition:** Enterprise
- **Choose a preset for this edition. Presets can be customized later as needed:** Sandbox
- **Region:** us-central1
- **Zonal Availability:** Single Zone
- **Connections:** Public IP (Review)
- **Data Protection:** 
  - **Enable deletion protection:** Disable or Uncheck setting related to 
- REST ALL LEAVE TO DEFAULTS
- Click on **CREATE INSTANCE**
### Step-02-02: Using gcloud CLI
- **Additional Reference:** https://cloud.google.com/sql/docs/mysql/create-instance#gcloud
```t
# Create Instance (Very Basic)
gcloud sql instances create INSTANCE_NAME 
Observation:
1. All other options will be default values

# Create Instance (Set DB Version, DB Size, Root Password, Zone)
gcloud sql instances create mydb2 \
            --database-version=MYSQL_8_0 --cpu=2 --memory=4GB \
            --region=us-central1 --root-password=dbpassword11 

# List Database Instances
gcloud sql instances list

# Describe Database Instances
gcloud sql instances describe INSTANCE_NAME
gcloud sql instances describe mydb1
gcloud sql instances describe mydb2
```


## Step-03: mydb1: Connect to Database Instance using Cloud Shell and Load Data
```t
# mydb1: Connect to Cloud SQL MySQL Instance using Cloud Shell
gcloud sql connect mydb1 --user=root --quiet

# mydb1: MySQL Commands - Create Database Schema
show schemas;
create schema webappdb1;
show schemas;

# mydb1: Create Table
use webappdb1;
CREATE TABLE myusers (firstname VARCHAR(50),lastname VARCHAR(50));
show tables;

# mydb1: Load Data into Table
INSERT INTO myusers (firstname, lastname) VALUES
    ('John', 'Doe'),
    ('Jane', 'Smith'),
    ('Alice', 'Johnson'),
    ('Bob', 'Williams'),
    ('Eva', 'Miller');

# mydb1: Query Table
select * from myusers;
exit
```

## Step-04: mydb2: Connect to Database Instance using Cloud Shell 
```t
# mydb2: Connect to Cloud SQL MySQL Instance using Cloud Shell
gcloud sql connect mydb2 --user=root --quiet

# mydb2: MySQL Commands
show schemas
```

## Step-05: Manage Databases in a Database Instance (gcloud sql databases)
```t
# Create Database in the Database Instance
gcloud sql databases create DATABASE_NAME --instance=INSTANCE_NAME
gcloud sql databases create webappdb2 --instance=mydb1
gcloud sql databases create webappdb3 --instance=mydb1
gcloud sql databases create webappdb4 --instance=mydb1

# List Databases from the Database Instance
gcloud sql databases list --instance=INSTANCE_NAME
gcloud sql databases list --instance=mydb1

# Also List Databases from Web Console
Go to Cloud SQL -> mydb1 -> Databases

# Delete a Database from the Database Instance
gcloud sql databases delete DATABASE_NAME --instance=INSTANCE_NAME
gcloud sql databases delete webappdb4 --instance=mydb1
gcloud sql databases list --instance=mydb1
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