SELECT  title, duration FROM Tracks
ORDER BY duration DESC
LIMIT 1;

SELECT title, duration FROM Tracks
WHERE  duration >= 210;

SELECT title, relisedate FROM Collectoins
WHERE  relisedate > 2017 AND relisedate < 2022;

SELECT name FROM  Musician
WHERE name NOT LIKE '% %';

SELECT title FROM Tracks
WHERE title LIKE '%Mein%';