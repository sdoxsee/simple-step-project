provider "google" {
  credentials = "${file("./creds/tf-credentials.json")}"
  project     = "simple-step-project"
  region      = "northamerica-northeast1"
}
