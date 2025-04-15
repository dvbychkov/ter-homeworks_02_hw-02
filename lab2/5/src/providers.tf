terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
  }
  required_version = ">=1.5"
}

provider "yandex" {
  service_account_key_file = "/home/vm1/ter-homeworks/02/src/key.json"
  cloud_id  = "b1ggid9nl12161umo6r8"
  folder_id = "b1grekf05a830gqkk35s"
  zone      = "ru-central1-a"
}
