# Cloud SQL - Export and Import Operations

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- Export and Import Data
- List and Describe Database Operations
- Delete Database Instances

## Step-02: gcloud: Export and Import Data
### Step-02-01: Export and Import using Web Console
- mydb1: Export using Web Console
- mydb2: Import using Web Console
  - Verify mydb2 if webappdb1 database exists, if so delete it before import
### Step-02-02: Export and Import using gcloud
```t
# mydb1: gcloud sql export (sql, bak, csv)
gcloud sql export sql mydb1 gs://mydb1exports101/mydb1export1.sql.gz --database=webappdb1 

# mydb2: Remove webappdb1 if exists in mydb2
gcloud sql connect mydb2 --user=root --quiet
drop schema webappdb1
[OR]
Go to mydb2 -> Databases -> webappdb1 -> Delete

# mydb2: gcloud sql import
gcloud sql import sql mydb2 gs://mydb1exports101/mydb1export1.sql.gz

# mydb2: Connect and Verify
gcloud sql connect mydb2 --user=root --quiet
```

## Step-03: Cloud SQL - Operations
```t
# Cloud Web Console
go to mydb1 -> Operations

# gcloud sql operations
gcloud sql operations list --instance=mydb1

# Describe operation
gcloud sql operations describe OPERATION-ID
gcloud sql operations describe c9d0d065-4e61-42c8-ad86-9c3f00000032
```

## Step-04: Delete Database Instances
```t
# Delete Database Instances
gcloud sql instances delete INSTANCE_NAME
gcloud sql instances delete mydb1
gcloud sql instances delete mydb2
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