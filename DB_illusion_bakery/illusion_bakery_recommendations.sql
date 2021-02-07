create table recommendations
(
    id               int auto_increment
        primary key,
    content          text        not null,
    img              varchar(40) not null,
    slogan           varchar(50) not null,
    recommender_name varchar(20) not null
);

INSERT INTO illusion_bakery.recommendations (id, content, img, slogan, recommender_name) VALUES (1, 'מאז שהכרתי את עדי, אני וכל מי שמכיר אותי לא מסיים ארוחת שישי בלי אחד הקינוחים
תוספת מושלמת לארוחה, ממליץ לכל סטודנט וכל אדם באשר הוא', 'shoham.jpg', 'קניתי לכל החברים שלי

', 'שוהם');
INSERT INTO illusion_bakery.recommendations (id, content, img, slogan, recommender_name) VALUES (2, 'הייתי סקפטית בהתחלה, אבל החלטתי בכל זאת לנסות
זה טעם גן עדן, עד היום אני חולמת על זה בלילה
מחכה לנסות את כל הטעמים', 'hillit.jpg', '!זאת העוגיה הכי טובה', 'הילית');
INSERT INTO illusion_bakery.recommendations (id, content, img, slogan, recommender_name) VALUES (3, 'מהביס הראשון הרגשתי שזאת עוגה אחרת לגמרי מכל מה שטעמתי עד היום
התחלתי ולא יכלתי להפסיק, זה רק נהיה יותר ויותר טעים. רק מחכה לביס הבא', 'leorre.jpg', '..לא יכלתי להפסיק', 'ליאור');
INSERT INTO illusion_bakery.recommendations (id, content, img, slogan, recommender_name) VALUES (4, 'בפעם הראשונה שאכלתי מהעוגות שלה פשוט התמוגגתי. לקחתי ביס אחד- ואז אכלתי את כל העוגה!', 'karin.jpg', '!כל המתכונים שלי לקחתי מעדי', 'קרין');
INSERT INTO illusion_bakery.recommendations (id, content, img, slogan, recommender_name) VALUES (5, 'עדי היא פשוט הכי טובה מכולם. אין מה לומר. היא המודל לחיקוי שלי, החלום שלי זה להיות כמוה!', 'or.png', '!לוקחת אותי בלי למצמץ', 'אור');
INSERT INTO illusion_bakery.recommendations (id, content, img, slogan, recommender_name) VALUES (6, 'פתחתי את המסעדות שלי באירופה בהשראת העוגות והמתכונים של עדי. כל פס הקינוחים שלי הוא בזכותה', 'asaf.jpg', '!כוכב המישלן שלי הוא בזכותה', 'אסף');