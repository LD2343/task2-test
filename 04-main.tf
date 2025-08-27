resource "google_cloud_run_service" "red" {
  name     = "cloudrun-02"
  location = "us-central1"

  template {
    spec {
      containers {
        image = var.red-image
        ports {
          container_port = 5000
        }
        env {
          name = "COLOR"
          value = "red"
        }
      }
    }
  }

  # traffic {
  #   percent = 10
  #   revision_name = "cloudrun-02-00004-qqp"
  # }
  
  # traffic {
  #   percent = 10
  #   revision_name = "cloudrun-02-00003-hm4"
  # }
  
  # traffic {
  #   percent = 40
  #   revision_name = "cloudrun-02-00002-9fp"
  # }
  
  # traffic {
  #   percent = 40
  #   revision_name = "cloudrun-02-00001-wlx"
  # }
  
  traffic {
    percent         = 100
    latest_revision = true
  }
}

# make app public
resource "google_cloud_run_service_iam_member" "member" {
  location = google_cloud_run_service.red.location
  project = google_cloud_run_service.red.project
  service = google_cloud_run_service.red.name
  role = "roles/run.invoker"
  member = "allUsers"
}