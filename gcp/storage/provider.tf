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