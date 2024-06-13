--1
INSERT INTO user (username,password)
VALUES ("Alejandro", "Cazapatos42"),("Leo", "Patito") 
--2
INSERT INTO post (author_id,created,title,body)
VALUES (1,"Alejandro","Hola Mundo","Hola, como estan"),(2,"Leo", "Hola Mundito","Hola, como estan, yo estoy muy bien :D");

INSERT INTO post (author_id,title,body)
VALUES ((SELECT id FROM user WHERE username like "Alejandro"),"Necesito algo","Necesito un motor para mi heladera"),
((SELECT id FROM user WHERE username like "Alejandro"),"Necesito algo","Necesito un motor para mi heladera"),
((SELECT id FROM user WHERE username like "Alejandro"),"Necesito una heladera","no encuentro motor asi que voy a comprar una, recomienden una heladera porfa")
,((SELECT id FROM user WHERE username like "Leo"),"Alguien recomiende una musica","Recomienden una musica que sea bueno y no pasen cualquier cosa porfa")
,((SELECT id FROM user WHERE username like "Leo"),"chistosos","quien fue el que mando audios muy atrevidos"),
((SELECT id FROM user WHERE username like "Leo"),"Nose","Lo unico quese es que no se nada");

--3
INSERT INTO user (username,password)
VALUES ("jos2",(SELECT password FROM user WHERE username like "Leo"))

--4
UPDATE post set body = ""
WHERE author_id = (SELECT id FROM user WHERE username like "Leo"),(SELECT id FROM user WHERE username like "Alejandro")

--5
DELETE FROM post
WHERE author_id = (SELECT id FROM user WHERE username like "Alejandro"),(SELECT id FROM user WHERE username like "Alejandro")
DELETE FROM user
WHERE id = (SELECT id FROM user WHERE username like "Alejandro")