# Title: Google Cloud SSH Keys Metadata-Managed Instance Level

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to Master SSH Keys Metadata-Managed at Instance Level on Google Cloud Platform GCP
## Step-01: Introduction
1. **Metadata-managed** SSH Connections
   1. **Automatically Configured at Project Level:** Temporarily grant a user access to an instance (so far we are using this one)
   2. **Manually Managing SSH Keys in Metadata:** Generate SSH keys and upload to Project Medatada
   3. **Instance-Level** Public SSH Keys
2. **OS Login-managed** SSH connections (Google Recommended)
3. In this section, we are going to focus on SSH Keys Metadata-Managed at Instance level

## Step-02: Create SSH Keys Manually - Public and Private Key
- [Risks of Manual Key Management](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys#risks)
```t
# Switch Directory
cd ssh-keys

# Generate SSH Keys
ssh-keygen -t rsa -f ssh-keys-instance-level -C sshinstanceleveluser1

# File Names
SSH Private Key: ssh-keys-instance-level
SSH Public Key: ssh-keys-instance-level.pub

# Restrict access to your private key so that only you can read it and nobody can write to it
chmod 400 ssh-keys-instance-level

# Copy content from ssh-keys-instance-level.pub
cat ssh-keys-instance-level.pub
```

## Step-03: Upload Custom SSH Public Key and Username to VM Instance
- Go to Compute Engine -> VM Instances -> vm1 -> Edit
- **SSH Keys**
   - **Block Project-wide SSH Keys:** Check the box (Enable it)
   - Click on **Add Item**
```t
ssh-rsa xxxxxx
```   
- Click on **SAVE**

## Step-04: Connect using your Local Desktop Terminal
```t
# Connect from MacOS / Windows10 CMD line
cd ssh-keys
ssh -i ssh-keys-instance-level sshinstanceleveluser1@104.198.236.153
```

## Step-05: Connect using Project Level SSH Keys - Custom
- **Observation:** As we have enabled the option `Block Project-wide SSH Keys` at VM Instance level, we have got access denied for project level SSH keys
```t
# Connect from MacOS / Windows10 CMD line - Project Level Custom SSH Key from previous demo
cd 04-02-SSHKeys-Project-Level-Metadata/ssh-keys
ssh -i ssh-keys-custom sshcustomuser1@104.198.236.153

# Sample Output
Kalyans-Mac-mini:ssh-keys-custom kalyanreddy$ ssh -i ssh-keys-custom sshcustomuser1@104.198.236.153
sshcustomuser1@104.198.236.153: Permission denied (publickey).
Kalyans-Mac-mini:ssh-keys-custom kalyanreddy$ 
```

## Step-06: Clean-Up
- Delete Project level metadata
- Delete Project level SSH keys
- Delete Instance level metadata related to SSH keys

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
