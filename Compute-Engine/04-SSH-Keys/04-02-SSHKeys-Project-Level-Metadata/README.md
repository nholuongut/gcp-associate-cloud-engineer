# Title: Google Cloud SSH Keys Metadata-Managed Project Level

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to Master SSH Keys Metadata-Managed at Project Level on Google Cloud Platform GCP
## Step-01: Introduction
1. **Metadata-managed** SSH Connections
   1. **Automatically Configured at Project Level:** Temporarily grant a user access to an instance (so far we are using this one)
   2. **Manually Managing SSH Keys in Metadata:** Generate SSH keys and upload to Project Medatada
   3. **Instance-Level** Public SSH Keys
2. **OS Login-managed** SSH connections (Google Recommended)
3. In this section, we are going to focus on `SSH Keys Metadata-Managed` at Project level

## Step-02: Create SSH Keys Manually - Public and Private Key
- [Risks of Manual Key Management](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys#risks)
```t
# Switch Directory
cd ssh-keys

# Generate SSH Keys
ssh-keygen -t rsa -f ssh-keys-custom -C sshcustomuser1

# File Names
SSH Private Key: ssh-keys-custom
SSH Public Key: ssh-keys-custom.pub

# Restrict access to your private key so that only you can read it and nobody can write to it
chmod 400 ssh-keys-custom

# Copy content from ssh-keys-custom.pub
cat ssh-keys-custom.pub
```

## Step-03: Upload Custom SSH Public Key and Username to GCP Project Metadata
- Go to Compute Engine -> Metadata -> SSH Keys -> **Edit** 
- Click on **Add Item**
- Copy content of file `ssh-keys-custom.pub` to text box, automatically username will be populated, and click on **Save**
- Refresh browser to see `sshcustomuser1` public key present in Metadata. 

## Step-04: Connect using your Local Desktop Terminal
```t
# Connect from MacOS / Windows10 CMD line
cd ssh-keys
ssh -i ssh-keys-custom <USER-FROM-SSH-KEYS>@<VM-Public-IP>
ssh -i ssh-keys-custom sshcustomuser1@104.198.236.153
```

## Additional References
- [SSH Access](https://cloud.google.com/compute/docs/instances/access-overview)
- [Instance SSH](https://cloud.google.com/compute/docs/instances/ssh)
- [Adding or Removing SSH keys](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys)
- [SSH OS Login](https://cloud.google.com/compute/docs/oslogin)
- [Managing Instance Access](https://cloud.google.com/compute/docs/instances/managing-instance-access)

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