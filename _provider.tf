terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.73.0"
    }
  }
}

provider "google" {
  project = "tomgraydemo"
  region  = "us-central1"
}