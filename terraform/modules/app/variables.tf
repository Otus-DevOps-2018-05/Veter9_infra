variable public_key_path {
  description = "Path to the public key used to conect to instance"
}
variable zone {
  description = "zone"
}
variable app_disk_image {
  description = "Disk image fro redditapp"
  default = "reddit-app-base"
}
