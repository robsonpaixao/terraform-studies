resource "google_storage_bucket" "GCS1" {
  name          = "bucket-from-tf-robson"
  location      = "SOUTHAMERICA-EAST1"
  storage_class = "NEARLINE"

  labels = {
    "env" = "tf_env"
    "dep" = "complience"
  }

  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }

  retention_policy {
    is_locked        = true
    retention_period = 86400
  }
}

resource "google_storage_bucket_object" "picture" {
  name   = "troll-face"
  bucket = google_storage_bucket.GCS1.name
  source = "troll-face.jpg"
}
