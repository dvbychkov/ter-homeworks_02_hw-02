### VM Web Variables
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Web instance name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID for web instance"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image family for web instance"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "CPU cores for web instance"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "RAM size in GB"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "Core fraction for web instance"
}

variable "vm_web_disk_size" {
  type        = number
  default     = 5
  description = "Boot disk size in GB"
}

### VM DB Variables
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "DB instance name"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID for DB instance"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Zone for DB instance"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "CPU cores for DB instance"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "RAM size in GB"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Core fraction for DB instance"
}

variable "vm_db_disk_size" {
  type        = number
  default     = 5
  description = "Boot disk size in GB"
}
