create table contact_me
(
    first_name varchar(40)                         null,
    last_name  varchar(40)                         null,
    email      varchar(255)                        not null,
    comment    text                                null,
    date       timestamp default CURRENT_TIMESTAMP not null,
    primary key (email, date)
);

INSERT INTO illusion_bakery.contact_me (first_name, last_name, email, comment, date) VALUES ('אבי', 'אבי', 'avi@g.com', 'היה חזר בוטנים באובמבה', '2021-02-05 15:18:06');
INSERT INTO illusion_bakery.contact_me (first_name, last_name, email, comment, date) VALUES ('bar', 'bamani', 'bar@gmail.com', 'היתה חסרה לי עוגיה ', '2021-02-04 14:46:20');
INSERT INTO illusion_bakery.contact_me (first_name, last_name, email, comment, date) VALUES ('ברבר', 'ברבר', 'barbar@gg.com', 'לא אהובת קוקוס יותר מדיי', '2021-02-07 14:53:06');
INSERT INTO illusion_bakery.contact_me (first_name, last_name, email, comment, date) VALUES ('הילית', 'חזן', 'hilithazan@gmail.com', 'היה לי בוטן', '2021-02-04 14:46:20');
INSERT INTO illusion_bakery.contact_me (first_name, last_name, email, comment, date) VALUES ('יהב', 'חזן', 'ya@g.com', 'אין שוקלד', '2021-02-04 14:46:20');