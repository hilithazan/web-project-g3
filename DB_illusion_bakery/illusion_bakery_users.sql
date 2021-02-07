create table users
(
    email      varchar(40) not null
        primary key,
    first_name varchar(20) not null,
    last_name  varchar(20) not null,
    user_name  varchar(20) null,
    password   varchar(20) null,
    constraint users_username_uindex
        unique (user_name)
);

INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('amit@walla.co.il', 'amit', 'tzahar', 'amitamit1', 'amitamit1');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('avi@g.com', 'אבי', 'אבי', 'אביהמלך', 'tchvnkl123');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('barbar@dd.com', 'ברבר', 'ברבר', 'ברבר', '1111111111');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('hilithazan@gmail.com', 'הילית', 'חזן', 'הילתיייי', 'hilit1995');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('hillit_h@walla.co.il', 'hillit', 'hazan', 'hillit!', '7MpTwoUu');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('leorre@yahoo.co.il', 'leorre', 'newman', 'lili', 'lililili12');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('mayd@gmail.com', 'may', 'dori', 'may2', 'maymay11');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('shohamsh@gmail.com', 'shoham', 'shabat', 'shohamtheking1', 'shohamtheking1');
INSERT INTO illusion_bakery.users (email, first_name, last_name, user_name, password) VALUES ('yn@gmail.com', 'יהב', 'חזן', 'יהב', 'hvcjzi123');