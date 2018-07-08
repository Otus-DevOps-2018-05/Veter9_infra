provider "google" {
version = "1.4.0"
project = "${var.project}"
region = "${var.region}"
}

resource "google_compute_instance" "app" {
name = "reddit-app"
machine_type = "g1-small"
zone = "europe-west1-b"
  tags = ["reddit-app"]

  connection {
    type = "ssh"
    user = "alexander"
    agent = "false"
    private_key = "${file("~/.ssh/google_app")}"
  }

provisioner "file" {
  source = "files/puma.service"
  destination = "/tmp/puma.service"
}
provisioner "remote-exec" {
    script = "files/deploy.sh"
}

metadata {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }
# определение загрузочного диска
boot_disk {
initialize_params {
image = "${var.disk_image}"
}
}
# определение сетевого интерфейса
network_interface {
# сеть, к которой присоединить данный интерфейс
network = "default"
# использовать ephemeral IP для доступа из Интернет
access_config {}
}
}

resource "google_compute_firewall" "firewall_puma" {
  name = "allow-puma-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports = [
      "9292"]
  }
  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "reddit-app"]
}
