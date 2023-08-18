# This site (my portfolio site)

This site you're looking at runs on AWS. It's primarily composed of a flutter app stored in S3.

## API

The API component of this site is backed by AWS Serverless resources like Lambda and DynamoDB. Given the low traffic nature of this site, I selected AWS Serverless to avoid paying for server usage while the API is idle (which is will be most of the time). For high traffic APIs, it may make more sense to use an EC2 backed fleet depending on workload.

### API - Contact

The `/contact` API invokes a Lambda function which first adds a record to the contact table and then sends me an email with the information. This API highlights python. We use python as the langange in the first layer router as well as the logic for handling the `/contact` route specifically. Future APIs will create Lambdas or Containers in other languages to showcase those skills.

## Overview

Here's a high level overview diagram of this site.

![](resource:images/casey-boyer-brand-diagram_834x600.png)

## Operations

This is a very low traffic site, but we can still get meaningful metrics. Here's a basic dashboard which highlights some of the traffic metrics. We highlight the 4 Golden Signals: Traffic, Saturaiton, Latency, and Errors. These help to paint a high level picture of this service.

[Live Dashboard](https://cloudwatch.amazonaws.com/dashboard.html?dashboard=casey-boyer-brand-dev&start=PT72H&end=null&context=eyJSIjoidXMtZWFzdC0xIiwiRCI6ImN3LWRiLTM2NjA2OTYzNjQxNiIsIlUiOiJ1cy1lYXN0LTFfNndFTzdnRExtIiwiQyI6IjNqZ2w5dTluM2Fkbzgzb205aTUyb29uMmdlIiwiSSI6InVzLWVhc3QtMTpkN2M4YjI0ZC0yZjhmLTRlNjYtODIxNC1iM2ZjMzAwMzcxYTkiLCJNIjoiUHVibGljIn0=)

![](resource:images/casey-boyer-brand-dashboard_1369x500.png)
