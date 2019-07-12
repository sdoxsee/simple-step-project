resource "google_container_cluster" "gke-cluster" {
  name               = "tf-gke-cluster"
  network            = "default"
  location           = "us-east1"
  remove_default_node_pool = true
  initial_node_count = 1
}
