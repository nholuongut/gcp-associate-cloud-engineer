# Google Cloud Datastore Fundamentals

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- Legacy Datastore, recommended to use latest option which is **Firestore**
- Create Datastore
- Create Entities
- Query Entities using kind and GQL options

## Step-02:  Web Console: Create Cloud Datastore Instance
- **Important Note:** 
  - Each project may have a single database named “(default)” which qualifies it for free-tier quota. 
  - Once you've exhausted this quota, you're billed based on operations, storage, and network usage
- Go to Cloud Firestore -> **Create Database**
- **Select your Firestore mode:** Datastore
- **Database ID:** (default) or mydatastore1
- **Location:** us-east-1
- **Secure rules:** Test rules
- **SHOW DETAILS:** Review pricing
- Click on **CREATE DATABASE**

## Step-03: Create Entity in Datastore
- Go to Datastore -> mydatastore1 -> Entities -> CREATE ENTITY
- **Namesapce:** (default)
- **kind:** user
- **Key Identifier:** Numeric(auto-generated)
- **ADD PROPERTY - 1**
  - Name: firstname
  - Type: String
  - Value: kalyan
  - Index Property: Checked
  - Click on **DONE**
- **ADD PROPERTY - 2**
  - Name: lastname
  - Type: String
  - Value: reddy
  - Index Property: Checked
  - Click on **DONE**  
- Click on **CREATE**
- Repeat above steps to create second entity with user `srihan reddy`

## Step-04: Query By Kind
- Create Queries using `Query By Kind`

## Step-05: Query By GQL
- Create Queries using GQL
```t
# Query-1
select * from user

# Query-2
select * from user where firstname='kalyan'
```

## Step-06: Delete Datastore
- Go to Datastore -> mydatastore1 -> DELETE

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