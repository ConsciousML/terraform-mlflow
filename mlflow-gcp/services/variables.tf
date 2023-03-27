variable "project" {
  description = "The ID of the project in which the resources will be deployed."
  type        = string
}

variable "service_urls" {
    description = "The URLs of the services to be enabled."
    type        = list(string)
}