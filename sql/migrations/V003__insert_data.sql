INSERT INTO product (name, picture_url, price) VALUES ('Сливочная', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/6.jpg', 320.00);
INSERT INTO product (name, picture_url, price) VALUES ('Особая', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/5.jpg', 179.00);
INSERT INTO product (name, picture_url, price) VALUES ('Молочная', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/4.jpg', 225.00);
INSERT INTO product (name, picture_url, price) VALUES ('Нюренбергская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/3.jpg', 315.00);
INSERT INTO product (name, picture_url, price) VALUES ('Мюнхенская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/2.jpg', 330.00);
INSERT INTO product (name, picture_url, price) VALUES ('Русская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/1.jpg', 189.00);

INSERT INTO orders (status, date_created) SELECT (array['pending', 'shipped', 'cancelled'])[floor(random() * 3 + 1)], DATE(NOW() - (random() * (NOW() + '90 days'::interval - NOW())));
INSERT INTO order_product (quantity, order_id, product_id) SELECT floor(1+random()*50)::int, i, 1 + floor(random()*6)::int % 6 FROM generate_series(1, 10000000) s(i);
