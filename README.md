# Terraform MLflow

## Pre-requisites
### Installation
Follow this [link](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli#install-terraform).

### Setup GCP
1. Create a GCP project [here](https://console.cloud.google.com/projectcreate) if you don't have one already
2. Enable the following APIs:
- - [CloudSQL](https://console.cloud.google.com/apis/library/sql-component.googleapis.com?project=ml-pipeline-380711)
- - [Google Cloud Storage](https://console.cloud.google.com/apis/library/storage-component.googleapis.com?project=ml-pipeline-380711)
- - [Secret Manager](https://console.cloud.google.com/apis/library/secretmanager.googleapis.com?project=ml-pipeline-380711)
- - [App Engine](https://console.cloud.google.com/apis/library/appengine.googleapis.com?project=ml-pipeline-380711)
- - [Artifact Registry](https://console.cloud.google.com/apis/library/artifactregistry.googleapis.com?project=ml-pipeline-380711)
3. Create a service account [here](https://console.cloud.google.com/iam-admin/serviceaccounts) with the `Editor` role.
4. Download your service account key:
- - Go the `Service Account` tab in IAM
- - Click on your service account
- - Go to the `Keys` tab.
- - Select `ADD KEY` > `Create new key`
- - Use JSON key type
- - Save the key on disk

### Terraform Configuration File
Create a file called `terraform.tfvars` and add the following content:
```terraform
project_id = "<PROJECT_ID>"
credentials_file = "<PATH/TO/FILE>.json"
```
Where `<PROJECT_ID>` is the ID of your GCP project and `<PATH/TO/FILE>.json` is the path to the service account key you downloaded in the previous step.

This file will be used to populate the variables in the `variables.tf` file.
Terraform will automatically load the variables from this file.