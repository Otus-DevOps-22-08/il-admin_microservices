# Выполнено ДЗ №14

- Проверил работу контейнеров с разными сетками
- Написал docker-compose.yml для запуска сервисов
- Перенёс все переменные в .env
- Настроил docker-compose.override.yml для запуска дебага puma

Базовое имя проекта можно задать через переменную COMPOSE_PROJECT_NAME

```sh
docker-compose up -d
docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d
```
http://51.250.2.254:9292/


