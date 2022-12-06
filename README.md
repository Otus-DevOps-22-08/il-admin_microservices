# Выполнено ДЗ №13

- Настроил linter hadolint для проверки Dockerfile
- Написал 3 Dockerfile для запуска контейнеров
- Создал bridge-network reddit
- Проверил работу контейнеров
- Настроил том reddit_db и примонтировал при запуске к контейнеру ui
- Пересобрал и оптимизировал три Dokerfile на alpine. Каждый в соответствующей папке, с названием Dockerfile.2

```sh
docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db mongo:latest
docker run -d --network=reddit --network-alias=post iladmin/post:1.0
docker run -d --network=reddit --network-alias=comment iladmin/comment:1.0
docker run -d --network=reddit -p 9292:9292 iladmin/ui:3.0
```
http://51.250.2.254:9292/