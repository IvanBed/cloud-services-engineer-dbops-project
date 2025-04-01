# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

Создание новой базы.
CREATE DATABASE store;

Добавление нового юзера.
CREATE USER migrations WITH PASSWORD '1' 
GRANT ALL PRIVILEGES ON SCHEMA public TO migrations;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migrations;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO migrations;




SQL запрос.

SELECT o.date_created, SUM(p.price) FROM orders o INNER JOIN order_product op 
ON op.order_id = o.id INNER JOIN product p ON op.product_id = p.id 
WHERE o.status = 'shipped' AND o.date_created BETWEEN NOW()::DATE-EXTRACT(DOW FROM NOW())::INTEGER-7 AND NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER group by 1;
