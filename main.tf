resource "google_compute_instance" "aprofundalab" {
  name         = var.namevm
  machine_type = var.tipodemaquina
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }

  #metadata_startup_script = "echo hi > /test.txt"
}

# Adicione este recurso para o bucket de armazenamento
resource "google_storage_bucket" "function_bucket" {
  name     = "${var.project_id}-functions"
  location = var.location
  project  = var.project_id
}
