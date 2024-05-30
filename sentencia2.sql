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

--Update is null
UPDATE tracks set Composer = "money", AlbumId = 349
where AlbumId is NULL

UPDATE TRACKS 
SET Bytes = 100000, GenreId = 1 
WHERE AlbumId = 349;

--Delete canciones
DELETE FROM tracks WHERE name = "give" OR name = "me" or name = "money"
DELETE FROM tracks WHERE tracksid = x
--Delete album
DELETE FROM albums where Title = "give me money";
DELETE FROM albums where AlbumId = 349;

--Delete artista
DELETE FROM artists where ArtistId = 276
DELETE FROM artists where name = OGLock