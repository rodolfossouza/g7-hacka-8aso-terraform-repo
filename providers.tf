terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.34.0"
    }
  }
  backend "gcs" {
    bucket  = "hack-aso-grupo-07-bucket-tfstate"
    prefix  = "terraform/state"
#    credentials = "./hack-aso-grupo-07-b14d5de25aac.json"
#    credentials = "${ env.GOOGLE_CREDENTIALS }"
     
  }
}



provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.az
#  credentials = file("./hack-aso-grupo-07-b14d5de25aac.json")

}
