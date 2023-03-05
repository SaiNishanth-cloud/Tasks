provider "google" {
  project = "kubernetes-cluster-379315"
  region  = "us-central1-a"
  credentials = file("./credentials.json")
}

resource "google_container_cluster" "primary" {
  name               = "my-kube-cluster"
  location           = "us-central1-a"
  initial_node_count = 1

  node_config {
    machine_type = "e2-micro"
    disk_size_gb = 50
  }
}
