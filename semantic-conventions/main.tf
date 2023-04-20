terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.62.1"
    }
  }
}

provider "google" {
  # Configuration options
  project = "test-tf-descriptors"
}
