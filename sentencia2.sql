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