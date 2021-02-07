create table products
(
    p_name       varchar(40) not null
        primary key,
    type         varchar(20) not null,
    price        int         not null,
    picture      varchar(40) null,
    cookie_scale int         not null
);

INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('❤️Red Velvet❤️', 'package', 130, 'package_Red_velvet.JPG', 3);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('🌈עוגת קשת בענן🌈', 'cake', 240, 'rainbowCake.png', 1);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('🎀עוגת לוטוס ורודה🎀', 'cake', 250, 'pinkCake.png', 2);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('🎂עוגת טירה🎂', 'cake', 285, 'castleCake.png', 3);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('😍מארז יום האהבה😍', 'package', 140, 'package_to_beav.JPG', 2);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('OREO עוגת', 'cake', 260, 'oreoCake.png', 3);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('Unicorn illusion cup', 'package', 150, 'package_unicorn.JPG', 3);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('טום גון', 'cookie', 13, 'tomJohn.jpeg', 1);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('טראפלס שוקלד לבן', 'package', 100, 'package_white_trafels.JPG', 1);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('מארז משולב', 'package', 160, 'package_mix.JPG', 2);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('מוי בואנו', 'cookie', 14, 'muiBueno.jpeg', 2);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('מותק של חלב', 'cookie', 15, 'motekHalav.jpeg', 1);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('מתוקית', 'cookie', 14, 'metukit.jpeg', 2);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('סנואו', 'cookie', 13, 'snow.jpeg', 3);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('עוגת קינדר', 'cake', 300, 'chocolateCake.png', 2);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('שברנו דיאטה שוב', 'cookie', 14, 'shavarnuDiet.jpeg', 2);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('🥨מארז בייגלה שוקלד לבן🥨', 'package', 185, 'package_white_pretzel.JPG', 1);
INSERT INTO illusion_bakery.products (p_name, type, price, picture, cookie_scale) VALUES ('🥨עוגת בייגלה🥨', 'cake', 330, 'goldCake.png', 3);