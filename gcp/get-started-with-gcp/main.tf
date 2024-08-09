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
}

resource "google_storage_bucket" "GCS1" {
  name = "bucket-from-tf-robson"
  location = "SOUTHAMERICA-EAST1"
}