SELECT title, duration FROM Tracks
WHERE  duration = (SELECT MAX(duration)FROM Tracks);

SELECT title, duration FROM Tracks
WHERE  duration >= 210;

SELECT title, relisedate FROM Collectoins
WHERE  relisedate > 2017 AND relisedate < 2022;

SELECT name FROM  Musician
WHERE name NOT LIKE '% %';

SELECT title FROM Tracks
WHERE title LIKE '%Mein%';