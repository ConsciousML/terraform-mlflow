terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

resource "google_project_service" "project" {
  count = length(var.service_urls)
  project = var.project
  service = var.service_urls[count.index]
  disable_dependent_services = false
}