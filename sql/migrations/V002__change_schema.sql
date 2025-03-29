ALTER TABLE product ADD COLUMN price double precision;
ALTER TABLE product ADD CONSTRAINT pk_product PRIMARY KEY (id);
ALTER TABLE orders ADD COLUMN date_created date;
ALTER TABLE orders ADD CONSTRAINT pk_orders PRIMARY KEY (id);

ALTER TABLE order_product ADD CONSTRAINT fk_order
FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;

DROP TABLE orders_date;

DROP TABLE product_info;

DROP SEQUENCE orders_date_order_id_seq;
