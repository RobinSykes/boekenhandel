CREATE DATABASE if not exists boeken;

USE boeken;

CREATE TABLE top10 (
    id INT(11),
    naam VARCHAR(50),
    auteur VARCHAR(50),
    rating INT(11)
);

INSERT INTO top10 (id, naam, auteur, rating)
values ('1','<a href="informatieboeken.php" id="informatie">derksen</a>','Michel van Egmond, Antoinnette Scheulderman', 1),
 ('2','<a href="informatieboeken.php" id="informatie">de zevende zus</a>','Lucinda Riley', 2),
 ('3','<a href="informatieboeken.php" id="informatie">De jongen de mol de vos en het paard</a>','Charlie Mackesy Arthur Japin', 3),
 ('4','<a href="informatieboeken.php" id="informatie">ik ga leven</a>','Lale Gül', 4),
 ('5','<a href="informatieboeken.php" id="informatie">De dingen die je alleen ziet als je er de tijd voor neemt</a>','Haemin Sunim', 5),
 ('6','<a href="informatieboeken.php" id="informatie">Het geschenk</a>','edith eger', 6),
 ('7','<a href="informatieboeken.php" id="informatie">De heks van Limbricht</a>','Susan Smit', 7),
 ('8','<a href="informatieboeken.php" id="informatie">De keuze</a>','Edith Eva Eger', 8),
 ('9','<a href="informatieboeken.php" id="informatie">Master Your Mindset</a>','Michael Pilarczyk', 9),
 ('10','<a href="informatieboeken.php" id="informatie">Afvallen met gezond en vooral lekker eten</a>','Natalia Rakhorst Walter Rakhorst', 10),
 ('11','<a href="informatieboeken.php" id="informatie">smokey goodness</a>','Jord Althuizen',0),
 ('12','<a href="informatieboeken.php" id="informatie">socrates op sneakers</a>','elke wis',0),
 ('13','<a href="informatieboeken.php" id="informatie">het geschenk</a>','edith eger',0),
 ('14','<a href="informatieboeken.php" id="informatie">Patronen doorbreken</a>','Hannie van Genderen, Gitta Jacob',0),
 ('15','<a href="informatieboeken.php" id="informatie">De meeste mensen deugen</a>','rutger bregman',0);
SELECT * FROM top10
WHERE rating > 0
ORDER BY rating