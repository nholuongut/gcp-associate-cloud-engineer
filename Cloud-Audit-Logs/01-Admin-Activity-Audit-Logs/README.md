# Cloud Audit Logs - Admin Activity Audit Logs

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- We are going to learn about **Admin Activity Audit Logs**
### When will these logs get generated ?
- Creating resources (compute.instances.insert)
- Updating/patching resources (compute.instanceGroups.removeInstances)
- Setting/changing metadata (compute.instances.setMetadata)
- Setting/changing tags (compute.instances.setTags)
- Setting/changing labels (compute.instances.setLabels)
- Setting/changing permissions (compute.instances.setIamPolicy)
- Setting/changing any properties of a resource (including custom verbs) (compute.instances.update)

## Step-02: Create VM Instance
```t
# Set Project
gcloud config set project PROJECT_ID
gcloud config set project gcplearn9

# Create VM Instance
gcloud compute instances create myvm121 \
  --zone=us-central1-a \
  --machine-type=e2-micro \
  --network-interface=subnet=default \
  --tags=http-server \
  --metadata-from-file=startup-script=webserver-install.sh 

# List Compute Instances
gcloud compute instances list   
```

## Step-03: Logging Explorer - Log Name: activity log (audit_log)
- **Sample Activities:** Create VM Instance, Stop VM Instance, Delete VM Instance, RESET VM Instance ...
```t
# Log Query
logName="projects/gcplearn9/logs/cloudaudit.googleapis.com%2Factivity"
```
### Sample Activity Audit Log - For Reference (Create VM Instance)
```json
{
  "protoPayload": {
    "@type": "type.googleapis.com/google.cloud.audit.AuditLog",
    "authenticationInfo": {
      "principalEmail": "dkalyanreddy@gmail.com",
      "principalSubject": "user:dkalyanreddy@gmail.com"
    },
    "requestMetadata": {
      "callerIp": "35.240.141.234",
      "callerSuppliedUserAgent": "google-cloud-sdk gcloud/475.0.0 command/gcloud.compute.instances.create invocation-id/3a63500b87b0471a934480472e1c0fcb environment/devshell environment-version/None client-os/LINUX client-os-ver/6.1.77 client-pltf-arch/x86_64 interactive/True from-script/False python/3.11.8 term/screen (Linux 6.1.77+),gzip(gfe)",
      "requestAttributes": {},
      "destinationAttributes": {}
    },
    "serviceName": "compute.googleapis.com",
    "methodName": "v1.compute.instances.insert",
    "resourceName": "projects/gcplearn9/zones/us-central1-a/instances/vm1-audit",
    "request": {
      "@type": "type.googleapis.com/compute.instances.insert"
    }
  },
  "insertId": "-nut5osd6veo",
  "resource": {
    "type": "gce_instance",
    "labels": {
      "instance_id": "9006852555199593347",
      "project_id": "gcplearn9",
      "zone": "us-central1-a"
    }
  },
  "timestamp": "2024-05-24T03:11:47.971786Z",
  "severity": "NOTICE",
  "labels": {
    "compute.googleapis.com/root_trigger_id": "c586ffef-4b67-446d-b048-af29f978a4a2"
  },
  "logName": "projects/gcplearn9/logs/cloudaudit.googleapis.com%2Factivity",
  "operation": {
    "id": "operation-1716520299815-6192a86b860a0-7af27a85-14ace3e5",
    "producer": "compute.googleapis.com",
    "last": true
  },
  "receiveTimestamp": "2024-05-24T03:11:48.651967398Z"
}
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

