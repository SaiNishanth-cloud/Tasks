provider "google" {
  project = "kubernetes-cluster-379315" #Provide the project name
  region  = "us-central1-a" #Provide a region where to deploy
  credentials = file("./credentials.json")
}

resource "google_container_cluster" "primary" {
  name               = "my-kube-cluster" #Provide the cluster a name
  location           = "us-central1-a"  #Provide a location where to deploy the cluster
  initial_node_count = 1

  node_config {
    machine_type = "e2-micro"
    disk_size_gb = 50
  }
}
