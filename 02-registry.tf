# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository

# Create an Artifact Registry Docker Repo
resource "google_artifact_registry_repository" "task2-repo" {
  location      = "us-central1"
  repository_id = "task2-repo"
  description   = "Docker Repo for Cloud Run Images"
  format        = "DOCKER"
}