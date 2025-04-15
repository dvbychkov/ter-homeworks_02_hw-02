locals {
  vm_web_name = "${var.vpc_name}-${var.vm_web_platform_id}-web"
  vm_db_name  = "${var.vpc_name}-${var.vm_db_platform_id}-db"
  
  vm_common_metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_public_root_key}"
  }
}
