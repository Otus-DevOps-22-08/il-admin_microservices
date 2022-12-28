# Выполнено ДЗ №15

- Добавил образ и контейнер с прометеем
- Собрал последние образы контейнеров с помощью docker_build.sh
- Добавил в прометей node-exporter для мониторинга хоста
- Отправил все образы в докерхаб

Задания со *
- Добавил bitnami/mongodb-exporter для мониторинга монго
- Добавил blackbox-exporter для вебчеков и tcp-проверки портов
- Написан Makefile для быстрого запуска, билда и деплоя образов

Запустить все контейнеры с помощью docker-compose
```sh
make dcr
```
Остановить все контейнеры с помощью docker-compose
```sh
make dcr
```
Поссмотреть запущенные контейнеры
```sh
make dcr
```
Сервис:
http://51.250.64.131:9090/

Dockerhub:
https://hub.docker.com/u/iladmin
