terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
   project = "my-project-preta-lab"
   zone = "us-central1-a"
}
 
