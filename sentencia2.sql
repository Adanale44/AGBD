--Insertar Artista
INSERT INTO artists(name)
VALUES ("OGLock");
SELECT name FROM artists
ORDER BY ArtistId DESC

--Insertar Album
INSERT INTO albums(Title,ArtistId)
VALUES ("give me money",276);
SELECT Title FROM albums
ORDER BY ArtistId DESC

--Insertar 3 canciones
INSERT INTO tracks(name, MediaTypeId, Milliseconds, UnitPrice)
VALUES ("give",3,365041,1.99), ("me",3,315041,1.99), ("money",3,325041, 1.99);
SELECT name, MediaTypeId,Milliseconds,UnitPrice FROM tracks
ORDER BY name DESC