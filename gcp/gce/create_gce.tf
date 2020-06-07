resource "google_compute_instance" "default" {
  project      = "project_id"
  name         = "vm-1"
  machine_type = "n1-standard-1"
  zone         = "asia-southeast1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
