# Установка
## Arch
  Нужно любым способом установить минимальную конфигурацию арча. Удобно будет сделать это, используя iso образ по [ссылке](https://mega.nz/file/P2AySKIT#v-8fsa796mmlLYAe84WtYX1LI5Od8inx5Pmnv2RZNs8), где уже присутствуют файлы сборки. Путь к файлам - /etc/skel
## Сборка
  * Папка с файлами сборки **ОБЯЗАТЕЛЬНО** должна располагаться в корне новой системы (/)
  * Далее нужно выполнить следующие команды:
      ```
        cd /skel
        sudo bash install.sh
        bash set_config.sh
      ```
  * В конце надо добавить пользователя в группы input, gamemode
## Примечания
  * Для работы hyprland на виртуальной машине надо включить 3d аппаратное ускорение. Правда, сборка в любом случае на виртуальной машине будет работать так себе из-за проблем с драйверами
