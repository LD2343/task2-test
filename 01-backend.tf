# https://www.terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket      = "tf-states-class65v3" 
    prefix      = "terraform/task2-newversion"
    credentials = "gcpkey.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}