variable "project" {
    description = "The ID of the project in which the resources will be deployed."
    type = string
    default = "ml-pipeline-380711"
}

variable "credentials_file" {
    description = "The path to the credentials file for the service account."
    type = string
    default = "terraform-gcp-service-account.json"
}

variable "zone" {
    description = "The zone in which the resources will be deployed."
    type = string
    default = "europe-west9"
}
  
variable "region" {
    description = "The region in which the resources will be deployed."
    type = string
    default = "europe-west9-c"
}