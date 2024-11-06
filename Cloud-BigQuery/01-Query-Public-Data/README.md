# Big Query - Query Public Data

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

## Step-01: Introduction
- Review Public Datasets
- Run Queries using Google Cloud Console
- Run Queries using bq command line

## Step-02: Review Public Dataset: usa_names
- Go to Big Query -> Analysis -> Big Query Studio -> bigquery-public-data
- **Datasets:** usa_names

## Step-03: Review Table: usa_1910_2013
- SCHEMA Tab
- DETAILS Tab
- PREVIEW Tab

## Step-04: Run Query to get 1000 records
```t
# Query-1
SELECT * FROM `bigquery-public-data.usa_names.usa_1910_2013` LIMIT 1000
```

## Step-05: Run Query to get top 10 names with highest occurences
- This query will calculate the total number of occurrences (sum) for each unique name in the 'usa_1910_2013' dataset 
- Present the top 10 names with the highest total occurrences. 
- The result will include columns for 'name' and the calculated 'total' occurrences, ordered in descending order of total occurrences.
```t
# Query-2
SELECT name, SUM(number) AS total FROM `bigquery-public-data.usa_names.usa_1910_2013` GROUP BY name ORDER BY total DESC LIMIT 10;
```

## Step-06: bq Command Line: usa_names.usa_1910_2013 
```t
# Set Project
gcloud config set project PROJECT_ID
gcloud config set project gcplearn9

# Query-1: Run Query to get all recrods count from usa_names.usa_1910_2013
bq query --nouse_legacy_sql \
'SELECT COUNT(*) FROM bigquery-public-data.usa_names.usa_1910_2013'

# Query-2: Run query to get 15 records
bq query --nouse_legacy_sql \
'SELECT * FROM bigquery-public-data.usa_names.usa_1910_2013 LIMIT 15'

# Query-3: Run Query to get top 10 names with highest occurences
bq query --nouse_legacy_sql \
'SELECT name, SUM(number) AS total FROM bigquery-public-data.usa_names.usa_1910_2013 GROUP BY name ORDER BY total DESC LIMIT 10'
```

## Step-07: Assignment: bq Command Line: usa_names.usa_1910_current
```t
# Query-1: Run Query to get all recrods count from usa_names.usa_1910_2013
bq query --nouse_legacy_sql \
'SELECT COUNT(*) FROM bigquery-public-data.usa_names.usa_1910_current'

# Query-2: Run query to get 15 records
bq query --nouse_legacy_sql \
'SELECT * FROM bigquery-public-data.usa_names.usa_1910_current LIMIT 15'

# Query-3: Run Query to get top 10 names with highest occurences
bq query --nouse_legacy_sql \
'SELECT name, SUM(number) AS total FROM bigquery-public-data.usa_names.usa_1910_current GROUP BY name ORDER BY total DESC LIMIT 10'
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