
variable public_key_path {
  description = "Path to the public key used for ssh access"
}


variable zone {
  description = "default zone"
  default     = "europe-west1-b"
}
variable source_ranges {
  description = "Alowwed IP adresses"
  default = ["0.0.0.0/0"]
}