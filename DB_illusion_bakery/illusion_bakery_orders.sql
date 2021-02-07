create table orders
(
    order_id       int auto_increment
        primary key,
    email          varchar(40)          not null,
    date           datetime             not null,
    cash           tinyint(1) default 0 not null,
    serial_number  varchar(20)          null,
    submitted      tinyint(1) default 0 not null,
    pay_name       varchar(40)          null,
    pay_last_name  varchar(40)          null,
    pay_ID         varchar(40)          null,
    email_for_bill varchar(80)          null,
    pay_phone      varchar(40)          null,
    amount         varchar(20)          null,
    constraint orders_users_email_fk
        foreign key (email) references users (email)
);

create index orders_credit_cards_serial_number_fk
    on orders (serial_number);

INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (1, 'hillit_h@walla.co.il', '2021-01-27 00:00:00', 1, null, 1, 'הילית', 'חזן', '333333333', 'hillit_h@walla.co.il', '0522222222', '200');
INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (8, 'shohamsh@gmail.com', '2021-07-30 00:00:00', 0, '1111888811118888', 1, 'שוהם', 'שבת', '777777777', 'shohamsh@gmail.com', '0544444444', '800');
INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (9, 'shohamsh@gmail.com', '2018-07-04 17:05:00', 0, '1234567891234567', 1, 'שוהם', 'שבת', '777777777', 'shohamsh@gmail.com', '0544444444', '90');
INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (10, 'shohamsh@gmail.com', '2021-01-03 04:02:00', 0, '1111222211112222', 1, 'הילית', 'חזן', '666666666', 'hili@gg.com', '0526363637', '1316');
INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (12, 'mayd@gmail.com', '2021-01-28 20:13:05', 0, null, 0, null, null, null, null, null, null);
INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (13, 'hillit_h@walla.co.il', '2021-02-02 15:52:37', 0, null, 0, null, null, null, null, null, null);
INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (14, 'yn@gmail.com', '2021-02-04 18:41:19', 0, '1111111111111111', 1, 'דני', 'קושמרו', '666666666', 'hili@gg.com', '0526363637', '313');
INSERT INTO illusion_bakery.orders (order_id, email, date, cash, serial_number, submitted, pay_name, pay_last_name, pay_ID, email_for_bill, pay_phone, amount) VALUES (17, 'yn@gmail.com', '2021-02-05 19:39:00', 0, '9999222288886666', 1, 'הילית', 'חזן', '666666666', 'hili@gg.com', '0526363637', '160');