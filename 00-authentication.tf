# https://registry.terraform.io/providers/hashicorp/google/latest/docs

provider "google" {
  project     = "class65gcpv3"
  region      = "us-central1"
  credentials = "gcpkey.json"
}