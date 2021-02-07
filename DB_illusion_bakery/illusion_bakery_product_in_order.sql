create table product_in_order
(
    p_name   varchar(40)   not null,
    order_id int           not null,
    quantity int default 1 not null,
    primary key (p_name, order_id),
    constraint product_in_order_orders_order_id_fk
        foreign key (order_id) references orders (order_id),
    constraint product_in_order_products_product_name_fk
        foreign key (p_name) references products (p_name)
);

INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('🌈עוגת קשת בענן🌈', 9, 1);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('🌈עוגת קשת בענן🌈', 12, 4);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('🎂עוגת טירה🎂', 12, 3);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('😍מארז יום האהבה😍', 10, 9);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('OREO עוגת', 1, 1);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('OREO עוגת', 8, 3);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('OREO עוגת', 9, 4);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('Unicorn illusion cup', 1, 2);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('מוי בואנו', 10, 4);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('סנואו', 14, 1);
INSERT INTO illusion_bakery.product_in_order (p_name, order_id, quantity) VALUES ('עוגת קינדר', 14, 1);