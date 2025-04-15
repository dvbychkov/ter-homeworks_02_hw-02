###cloud vars
variable "cloud_id" {
  type        = string
  description = "Cloud ID"
}

variable "folder_id" {
  type        = string
  description = "Folder ID"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Default zone"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "Default CIDR"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC name"
}

### SSH vars
variable "vms_ssh_public_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHdptjFduIhjBi1xvjNsIo85+SiZSL1aYBCB5Uxrcub0 dvbychkov@gmail.com"
}

### VM Web Variables
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Web instance name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image family"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "CPU cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "RAM size (GB)"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "Core fraction"
}

variable "vm_web_disk_size" {
  type        = number
  default     = 5
  description = "Disk size (GB)"
}
