create table wishlist
(
    email  varchar(40) not null,
    p_name varchar(40) not null,
    primary key (email, p_name),
    constraint wishlist_products_products_product_name_fk
        foreign key (p_name) references products (p_name),
    constraint wishlist_products_users_email_fk
        foreign key (email) references users (email)
);

INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('hillit_h@walla.co.il', '❤️Red Velvet❤️');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('hillit_h@walla.co.il', '🌈עוגת קשת בענן🌈');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('hillit_h@walla.co.il', '😍מארז יום האהבה😍');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('shohamsh@gmail.com', '😍מארז יום האהבה😍');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('hillit_h@walla.co.il', 'OREO עוגת');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('shohamsh@gmail.com', 'Unicorn illusion cup');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('shohamsh@gmail.com', 'טום גון');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('hillit_h@walla.co.il', 'טראפלס שוקלד לבן');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('shohamsh@gmail.com', 'מארז משולב');
INSERT INTO illusion_bakery.wishlist (email, p_name) VALUES ('shohamsh@gmail.com', '🥨מארז בייגלה שוקלד לבן🥨');