create table events
(
    type_event varchar(40)                         null,
    full_name  varchar(80)                         null,
    gender     varchar(20)                         null,
    email      varchar(80)                         not null,
    phone      varchar(10)                         null,
    comment    text                                null,
    date       timestamp default CURRENT_TIMESTAMP not null,
    primary key (email, date)
);

INSERT INTO illusion_bakery.events (type_event, full_name, gender, email, phone, comment, date) VALUES ('ברית', 'אבי אבי', 'זכר', 'avi@g.com', '0528383830', 'בא לי ארוע מרגש', '2021-02-05 15:20:37');
INSERT INTO illusion_bakery.events (type_event, full_name, gender, email, phone, comment, date) VALUES ('יום הולדת', 'ברבר', 'זכר', 'barbar@gg.com', '0528383830', 'יום הולדת בנושא חיות', '2021-02-07 14:51:36');
INSERT INTO illusion_bakery.events (type_event, full_name, gender, email, phone, comment, date) VALUES ('בר/בת מצווה', 'דני כהן', 'זכר', 'dan@gmail.com', '0528383830', '', '2021-02-07 20:05:22');
INSERT INTO illusion_bakery.events (type_event, full_name, gender, email, phone, comment, date) VALUES ('יום הולדת', 'הילת חזן', 'זכר', 'hilithazan@gmail.com', '0528383830', '', '2021-02-06 18:04:42');
INSERT INTO illusion_bakery.events (type_event, full_name, gender, email, phone, comment, date) VALUES ('ברית', 'יוסי יוסי', 'זכר', 'ss@fff.co', '0528383830', '', '2021-02-04 16:36:23');
INSERT INTO illusion_bakery.events (type_event, full_name, gender, email, phone, comment, date) VALUES ('יום הולדת', 'מאי מאי', 'נקבה', 'y@g.com', '0534484475', '', '2021-02-04 16:35:51');
INSERT INTO illusion_bakery.events (type_event, full_name, gender, email, phone, comment, date) VALUES ('בר/בת מצווה', 'מאי הגבר', 'נקבה', 'ya@g.com', '0528383830', '', '2021-02-06 20:08:31');