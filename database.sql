CREATE DATABASE if not exists boeken;

USE boeken;

CREATE TABLE top10 (
    id INT(11),
    naam VARCHAR(50),
    auteur VARCHAR(50),
    rating INT(11)
);

INSERT INTO top10 (id, naam, auteur, rating)
values ('1','derksen','Michel van Egmond, Antoinnette Scheulderman', 1),
 ('2','de zevende zus','Lucinda Riley', 2),
 ('3','De jongen de mol de vos en het paard','Charlie Mackesy Arthur Japin', 3),
 ('4','ik ga leven','Lale Gül', 4),
 ('5','De dingen die je alleen ziet als je er de tijd voor neemt','Haemin Sunim', 5),
 ('6','Het geschenk','edith eger', 6),
 ('7','De heks van Limbricht','Susan Smit', 7),
 ('8','De keuze','Edith Eva Eger', 8),
 ('9','Master Your Mindset','Michael Pilarczyk', 9),
 ('10','Afvallen met gezond en vooral lekker eten','Natalia Rakhorst Walter Rakhorst', 10),
 ('11','smokey goodness','Jord Althuizen',0),
 ('12','socrates op sneakers','elke wis',0),
 ('13','het geschenk','edith eger',0),
 ('14','Patronen doorbreken','Hannie van Genderen, Gitta Jacob',0),
 ('15','De meeste mensen deugen','rutger bregman',0);
SELECT * FROM top10
WHERE rating > 0
ORDER BY rating