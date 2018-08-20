variable project {
  description = "Project ID"
  default     = "top-alliance-208117"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable zone {
  description = "default zone"
  default     = "europe-west1-b"
}

variable "app_disk_image" {
  description = "Disk image fro Reddit app"
  default     = "reddit-app-base"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
