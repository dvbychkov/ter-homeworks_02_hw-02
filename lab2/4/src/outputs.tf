output "vm_instances" {
  description = "Information about created VM instances"
  value = {
    web = {
      name       = yandex_compute_instance.platform_web.name
      external_ip = yandex_compute_instance.platform_web.network_interface[0].nat_ip_address
      fqdn       = yandex_compute_instance.platform_web.fqdn
    }
    db = {
      name       = yandex_compute_instance.platform_db.name
      external_ip = yandex_compute_instance.platform_db.network_interface[0].nat_ip_address
      fqdn       = yandex_compute_instance.platform_db.fqdn
    }
  }
}
