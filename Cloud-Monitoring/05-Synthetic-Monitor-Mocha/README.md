# Title: GCP Google Cloud Platform - Synthetic Monitoring Mocha Template

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn to use Cloud Synthetic Monitoring Mocha Template
## Step-01: Introduction
- Learn to use Cloud Synthetic Monitoring Mocha Template

## Step-02: Synthetic Monitoring - Mocha Template
- Go to Cloud Monitoring -> Detect -> Synthetic Monitoring -> **CREATE SYNTHETIC MONITOR**
- **Name:** synthetic-monitor-mocha-template
- **Response timeout:** 30 seconds
- **Check Frequency:** 1 minute
### Cloud Function
- **Function name:** synthetic-monitor-mocha-template-1
- **Region:** us-central1
- REST ALL LEAVE TO DEFAULTS
```js
// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// [START monitoring_synthetic_monitoring_mocha_test]

/*
 * This is the file may be interacted with to author mocha tests. To interact
 * with other GCP products or services, users should add dependencies to the
 * package.json file, and require those dependencies here A few examples:
 *  - @google-cloud/secret-manager:
 *        https://www.npmjs.com/package/@google-cloud/secret-manager
 *  - @google-cloud/spanner: https://www.npmjs.com/package/@google-cloud/spanner
 *  - Supertest: https://www.npmjs.com/package/supertest
 */

const {expect} = require('chai');
const fetch = require('node-fetch');

it('pings my website', async () => {
  const url = 'https://luongutnho.com/'; // URL to send the request to
  const externalRes = await fetch(url);
  expect(externalRes.ok).to.be.true;
});

// [END monitoring_synthetic_monitoring_mocha_test]

```
- Click on **APPLY FUNCTION**
### Alerts and notifications
- **Create Alert:** enable
- **Alert name:** synthetic failure mocha template
- **Alert Duration:** 1 minute
- **Notification Channels:** gcpuser08
- Click on **CREATE**


## Step-03: Verify Cloud Function
- WAIT FOR 5 MINUTES FOR CLOUD FUNCTION TO GET DEPLOYED AND READY
- Go to Cloud Functions

## Step-04: Verify Synthetic monitor 
- Go to Cloud Monitoring -> Detect -> Synthetic Monitoring

## Step-05: Verify Alert Policies
- Go to Cloud Monitoring -> Detect -> Alerting -> Policies

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