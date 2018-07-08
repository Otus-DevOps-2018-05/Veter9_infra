resource "google_compute_instance" "db" {
  "boot_disk" {
    initialize_params {
      image = "${var.db_disk_image}"
    }
  }
  machine_type = "g1-small"
  name = "reddit-db"
  zone = "${var.zone}"
  tags = ["reddit-db"]

  "network_interface" {
    network = "default"
    access_config {}
  }
  metadata {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }
}

resource "google_compute_firewall" "firewall_mongo" {
  name = "allow-mongo-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports = ["27017"]
  }
  target_tags = ["reddit-db"]
  source_tags = ["reddit-app"]
}


