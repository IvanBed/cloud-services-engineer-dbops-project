CREATE TABLE product (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
    name character varying(255) NOT NULL,
    picture_url character varying(255)
);

CREATE TABLE orders (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
    status character varying(255)
);

CREATE TABLE order_product (
    quantity INTEGER NOT NULL,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL
);

CREATE TABLE orders_date (
    order_id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY,
    status character varying(255),
    date_created DATE DEFAULT CURRENT_DATE
);

CREATE TABLE product_info (
    product_id BIGINT NOT NULL,
    name character varying(255) NOT NULL,
    price double precision
);
