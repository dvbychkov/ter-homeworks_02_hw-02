
«Основы Terraform. Yandex Cloud» - «Бычков Денис Вячеславович»      
    
--- 

Задача 1
1. Изучите проект. В файле variables.tf объявлены переменные для Yandex provider.
2. Создайте сервисный аккаунт и ключ. service_account_key_file.
3.Сгенерируйте новый или используйте свой текущий ssh-ключ. Запишите его открытую(public) часть в переменную vms_ssh_public_root_key.
4. Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.
5. Подключитесь к консоли ВМ через ssh и выполните команду  curl ifconfig.me. Примечание: К OS ubuntu "out of a box, те из коробки" необходимо подключаться под пользователем ubuntu: "ssh ubuntu@vm_ip_address". Предварительно убедитесь, что ваш ключ добавлен в ssh-агент: eval $(ssh-agent) && ssh-add Вы познакомитесь с тем как при создании ВМ создать своего пользователя в блоке metadata в следующей лекции.;
6. Ответьте, как в процессе обучения могут пригодиться параметры preemptible = true и core_fraction=5 в параметрах ВМ.

<img src = "img/13.JPG" width = 50%>

<img src = "img/14.JPG" width = 50%>

<img src = "img/141.JPG" width = 50%>

<img src = "img/15.JPG" width = 50%>

<img src = "img/16.JPG" width = 50%>

<img src = "img/161.JPG" width = 50%>


Задача 2
1. Замените все хардкод-значения для ресурсов yandex_compute_image и yandex_compute_instance на отдельные переменные. К названиям переменных ВМ добавьте в начало префикс vm_web_ . Пример: vm_web_name.
2. Объявите нужные переменные в файле variables.tf, обязательно указывайте тип переменной. Заполните их default прежними значениями из main.tf.
3. Проверьте terraform plan. Изменений быть не должно.

<img src = "img/2.JPG" width = 50%>

<img src = "img/21.JPG" width = 50%>

<img src = "img/22.JPG" width = 50%>

<img src = "img/23.JPG" width = 50%>


Задача 3
1. Создайте в корне проекта файл 'vms_platform.tf' . Перенесите в него все переменные первой ВМ.
2. Скопируйте блок ресурса и создайте с его помощью вторую ВМ в файле main.tf: "netology-develop-platform-db" , cores  = 2, memory = 2, core_fraction = 20. Объявите её переменные с префиксом vm_db_ в том же файле ('vms_platform.tf'). ВМ должна работать в зоне "ru-central1-b"
3. Примените изменения.

<img src = "img/3.JPG" width = 50%>

<img src = "img/31.JPG" width = 50%>

<img src = "img/32.JPG" width = 50%>

<img src = "img/33.JPG" width = 50%>

<img src = "img/34.JPG" width = 50%>

<img src = "img/35.JPG" width = 50%>


Задача 4

1. Объявите в файле outputs.tf один output , содержащий: instance_name, external_ip, fqdn для каждой из ВМ в удобном лично для вас формате.(без хардкода!!!)
2. Примените изменения.
В качестве решения приложите вывод значений ip-адресов команды terraform output.

<img src = "img/4.JPG" width = 50%>

<img src = "img/41.JPG" width = 50%>


Задача 5

1. В файле locals.tf опишите в одном local-блоке имя каждой ВМ, используйте интерполяцию ${..} с НЕСКОЛЬКИМИ переменными по примеру из лекции.
2. Замените переменные внутри ресурса ВМ на созданные вами local-переменные.
3. Примените изменения.

<img src = "img/5.JPG" width = 50%>

<img src = "img/51.JPG" width = 50%>

<img src = "img/52.JPG" width = 50%>


Задача 6

1. Вместо использования трёх переменных ".._cores",".._memory",".._core_fraction" в блоке resources {...}, объедините их в единую map-переменную vms_resources и внутри неё конфиги обеих ВМ в виде вложенного map(object).

пример из terraform.tfvars:
vms_resources = {
  web={
    cores=2
    memory=2
    core_fraction=5
    hdd_size=10
    hdd_type="network-hdd"
    ...
  },
  db= {
    cores=2
    memory=4
    core_fraction=20
    hdd_size=10
    hdd_type="network-ssd"
    ...
  }
}
2. Создайте и используйте отдельную map(object) переменную для блока metadata, она должна быть общая для всех ваших ВМ.

пример из terraform.tfvars:
metadata = {
  serial-port-enable = 1
  ssh-keys           = "ubuntu:ssh-ed25519 AAAAC..."
}
Найдите и закоментируйте все, более не используемые переменные проекта.

Проверьте terraform plan. Изменений быть не должно.

<img src = "img/611.JPG" width = 50%>

<img src = "img/612.JPG" width = 50%>

<img src = "img/621.JPG" width = 50%>

<img src = "img/622.JPG" width = 50%>

<img src = "img/623.JPG" width = 50%>