create table recipe_ingredient
(
    recipe_name varchar(40) not null,
    ing         varchar(20) not null,
    primary key (recipe_name, ing),
    constraint recipe_ing_recipes_recipe_name_fk
        foreign key (recipe_name) references recipes (recipe_name)
);

INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'חצי כוס דבש');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'כוס קמח');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'כפית קינמון');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'קורט מלח');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'שלוש וחצי כפות פודינ');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'שקית אבקת אפייה');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'שתי ביצים');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'שתי כפות לוטוס');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת דבש לוטוס', 'שתי כפות סוכר');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת שוקולד עסיסית', 'חבילת שוקולד מריר');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת שוקולד עסיסית', 'חבילת שמנת מתוקה');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת שוקולד עסיסית', 'כף שמן');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת שוקולד עסיסית', 'שתי כוסות קמח');
INSERT INTO illusion_bakery.recipe_ingredient (recipe_name, ing) VALUES ('עוגת שוקולד עסיסית', 'שתי סוכות סוכר');