create table recipes
(
    recipe_name varchar(40)  not null
        primary key,
    directions  varchar(500) null,
    picture     varchar(255) null,
    video       varchar(255) null,
    tip         varchar(40)  null
);

INSERT INTO illusion_bakery.recipes (recipe_name, directions, picture, video, tip) VALUES ('עוגת דבש לוטוס', 'מנפים את הקמח לקערה ומסיפים את הפדוינג, אבקת האפייה, הקינמון ומלח. בקערה נפרדת מערבבים את הביצים והדבש יחד. לאחר מכן מוסיפים את הלוטוס ומערבבים. מוסיפים לזה את השמנת ושאר היבשים. אופים כחצי שעה
אני הוספתי גלייז וניל לימוני: חצי כוס אבקת סוכר מנופה, 3 כפות שמנת מתוקה, חצי כפית תמצית וניל, מעט מיץ לימון. לערבב בכל ולשפוך על העוגה כשהיא חמה
ניתן להוסיף תוספות כמו: פקאן, שקדים, מייפל, לוטוס מומס ומה שאוהבים ומתאים. אני הוספתי חצי כוס שברי לוטוס

💕בתאבון ושנה טובה לכולם', 'honeyCake.png', 'video1.mp4', 'להוציא את העוגה קצת לפני שהיא מוכנה');
INSERT INTO illusion_bakery.recipes (recipe_name, directions, picture, video, tip) VALUES ('עוגת שוקולד עסיסית', 'לערבב את כל החומרים ויאללה לתנור', 'oreoCake.jfif', 'video1.mp4', 'להדליק את התנור מראש');