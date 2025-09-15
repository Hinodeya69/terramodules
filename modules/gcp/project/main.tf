    resource "google_project" "new_project" {
      name            = var.name
      project_id      = var.project_id            # Must be globally unique
      billing_account = var.billing_account       # Replace with your billing account ID
      folder_id       = var.folder_id             # Optional: If you want to place it in a folder
    }
    # Enable the Compute Engine API for the project Mandatory for VPC Creation
    resource "google_project_service" "compute_api" {
      project = google_project.new_project.project_id
      service = var.service
      disable_on_destroy = false
    }