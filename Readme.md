# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

Создание новой базы.
CREATE DATABASE store;

Добавление нового юзера.
CREATE USER migratios WITH PASSWORD '1' 
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migratios;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO migratios;
