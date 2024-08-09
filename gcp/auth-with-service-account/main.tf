terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.40.0"
    }
  }
}

provider "google" {
  project = "terraform-studies-gcp"
  region = "southamerica-east1"
  zone = "southamerica-east1-a"
  credentials = "../keys.json"
}

# resource "google_project_iam_member" "all_buckets_admin" {
#   project = "terraform-studies-gcp"
#   role    = "roles/storage.admin"
#   member  = "serviceAccount:terraform-cgp@terraform-studies-gcp.iam.gserviceaccount.com"
# }

resource "google_storage_bucket" "GCS1" {
  name = "bucket-from-tf-using-sa-robson"
  location = "SOUTHAMERICA-EAST1"
}