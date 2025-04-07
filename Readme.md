# DBOps Project

Репозиторий для выполнения проекта по дисциплине "DBOps" (Администрирование баз данных)

### 1. Создание новой базы данных и пользователя.
```sql
CREATE DATABASE store;

-- Создание пользователя для миграций
CREATE USER migrations WITH PASSWORD '1';
```
### 2. Предоставление прав пользователю.
```sql
-- Назначение прав на схему public
GRANT ALL PRIVILEGES ON SCHEMA public TO migrations;

-- Права на все таблицы
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migrations;

-- Права на будущие таблицы
ALTER DEFAULT PRIVILEGES IN SCHEMA public 
GRANT ALL PRIVILEGES ON TABLES TO migrations;
```
### 3. SQL-запрос, который показывает, какое количество сосисок было продано за предыдущую неделю.
```sql
SELECT 
    o.date_created, 
    SUM(p.price) AS total_sum
FROM 
    orders o 
    INNER JOIN order_product op ON op.order_id = o.id 
    INNER JOIN product p ON op.product_id = p.id 
WHERE 
    o.status = 'shipped' 
    AND o.date_created BETWEEN 
        NOW()::DATE - EXTRACT(DOW FROM NOW())::INTEGER - 7 
        AND NOW()::DATE - EXTRACT(DOW from NOW())::INTEGER
GROUP BY 
    o.date_created;
```
