SELECT t_title, duration FROM Tracks
WHERE  duration = (SELECT MAX(duration)FROM Tracks);

SELECT t_title, duration FROM Tracks
WHERE  duration >= 210;

SELECT c_title, relisedate FROM Collectoins
WHERE  relisedate > 2017 AND relisedate < 2022;

SELECT nickname FROM  Musician
WHERE nickname NOT LIKE '% %';

SELECT t_title FROM Tracks
WHERE t_title LIKE '%Mein%';