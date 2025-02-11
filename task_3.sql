SELECT title, COUNT(title)
FROM  Genres g
LEFT JOIN MusicianGenre mg ON mg.genreid = g.id
GROUP BY title;

SELECT  a_title, a.relisedate, t_title, COUNT(t_title)
FROM  Albums a
LEFT JOIN Tracks t ON a.id = t.AlbumID
WHERE relisedate BETWEEN 2015 AND 2022
GROUP BY a_title, a.relisedate, t_title;

SELECT a_title,  AVG(duration) FROM Albums a
LEFT JOIN Tracks t ON a.id = t.albumid
GROUP BY a.a_title;

SELECT nickname
FROM Musician m
WHERE m.id NOT IN (SELECT m.id FROM Musician m
LEFT JOIN MusicianAlbums ma ON m.id = ma.MusicianID
LEFT JOIN Albums a on a.id = ma.AlbumID
WHERE relisedate = 2020);

SELECT c_title, m.nickname FROM Collectoins C
LEFT JOIN CollectionsTracks ct ON ct.CollectionID = c.id
LEFT JOIN Tracks t ON ct.TrackID = t.id
LEFT JOIN Albums a ON t.AlbumID = a.id
LEFT JOIN MusicianAlbums ma ON a.id = ma.AlbumID
LEFT JOIN Musician m ON m.id = ma.MusicianID
WHERE m.nickname LIKE 'Metallica';

