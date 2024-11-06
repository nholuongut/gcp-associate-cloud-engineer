# Title: Google Cloud SSH Keys using OS Login

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to Master SSH Keys using OS Login on Google Cloud Platform GCP
## Step-01: Introduction
1. **Metadata-managed** SSH Connections
   1. **Automatically Configured at Project Level:** Temporarily grant a user access to an instance (so far we are using this one)
   2. **Manually Managing SSH Keys in Metadata:** Generate SSH keys and upload to Project Medatada
   3. **Instance-Level** Public SSH Keys
2. **OS Login-managed** SSH connections (Google Recommended)
3. In this section, we are going to focus on SSH Keys using OS Login

## Step-02: Enable OS Login at Project Level
- Go to Compute Engine -> Metadata -> Edit
- Click on **Add item**
- Add the following
   - **key:** enable-oslogin	
   - **value:** TRUE
- Click on **SAVE**

## Step-03: Connect to VM Instance using SSH
- Go to Compute Engine -> VM Instances -> vm1 -> SSH -> Open in new browser window
- Primary Difference
   - **Username Format: username_domain_com:** Complete email address of user including domain
```t
# Sample Output
Creating directory '/home/dkalyanreddy_gmail_com'.
dkalyanreddy_gmail_com@vm1:~$ 
```

## Step-04: Connect to VM Instance using Cloud Shell gcloud ssh command
- Go to Compute Engine -> VM Instances -> vm1 -> SSH -> View gcloud command
```t
# Connect to VM using gcloud in Cloud Shell
gcloud compute ssh --zone "us-central1-a" "vm1" --project "gcplearn9"
```

## Step-05: Conclusion
1. We will be able to connect via gcloud
2. We will be able to connect via SSH Browser
3. We cannot connect via Third Party Tools like `Putty, ssh command from local desktop terminal`. In short cannot connect via third party tools. 
4. In next demo we will see how we can connect using Third Party Tools and with OS-Login enabled. 


## Step-06: Roles to VM Users Admin and Non-Admin
- [IAM Roles](https://cloud.google.com/compute/docs/instances/managing-instance-access#configure_users)
- We can control the permissions of a user connecting to VM Instance can have admin or a non-admin access inside VM.
- `roles/compute.osLogin`, which doesn't grant administrator permissions
- `roles/compute.osAdminLogin`, which grants administrator permissions


## Step-07: Discuss Additional Roles
1. Service Accounts
2. External Users (roles/compute.osLoginExternalUser)

## Step-08: Discuss about Revoking Access
- [Revoking Access](https://cloud.google.com/compute/docs/instances/managing-instance-access#revoking_os_login_iam_roles)

## Additional References
- [SSH using OS Login](https://cloud.google.com/compute/docs/instances/managing-instance-access)

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