# Cloud Pub/Sub Basics using gcloud

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- gcloud: Create Pub/Sub Topic
- gcloud: Create Pub/Sub Subscription
- gcloud: Publish Messages
- gcloud: Pull Messages in Subscription and Acknowledge

## Step-02: gcloud: Create Pub/Sub Topic, Subscription
```t
# Set Project
gcloud config set project PROJECT_ID
gcloud config set project gcplearn9

# Create Cloud Pub/Sub Topic
gcloud pubsub topics create mytopic2

# Create Cloud Pub/Sub Subscription
gcloud pubsub subscriptions create mysubscription2 --topic mytopic2

# Review Topic and Subscription in Web Console
1. Go to Cloud Pub/Sub -> mytopic2
2. Go to Cloud Pub/Sub -> mysubscription2
```
## Step-03: gcloud: Publish Messages
```t
# Publish Message-1
gcloud pubsub topics publish projects/gcplearn9/topics/mytopic2 --message="hello kalyan 1" 
gcloud pubsub topics publish projects/gcplearn9/topics/mytopic2 --message="hello kalyan 2" 
gcloud pubsub topics publish projects/gcplearn9/topics/mytopic2 --message="hello kalyan 3" 

# Pull all messages from subscription: mysubscription3
gcloud pubsub subscriptions pull mysubscription2
gcloud pubsub subscriptions pull mysubscription2 —-auto-ack
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