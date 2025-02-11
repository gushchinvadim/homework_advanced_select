INSERT INTO Musician (id, nickname, GenreID)
VALUES  (1,'Beyonce'),
        (2,'Руки Вверх'),
        (3,'Metallica'),
        (4,'Rammstein'),
        (5, 'Любэ');

INSERT INTO Genres (id,title)
VALUES  (1,'R&B'),
        (2,'Pop'),
        (3,'Rock');

INSERT INTO MusicianGenre (MusitianID, GenreID)
VALUES  (1,1),
        (2,2),
        (3,3),
        (4,3),
        (5,2);

INSERT INTO Albums (id,a_title, relisedate)
VALUES  (1,'Lemonade',2016),
        (2,'Он тебя целует', 2024),
        (3,'Kill `Em All',1983),
        (4,'Mutter',2001),
        (5, 'Атас',1989);

INSERT INTO  MusicianAlbums(MusicianID,AlbumID)
VALUES  (1,1),
        (2,2),
        (3,3),
        (4,4),
        (5,5);

INSERT INTO  Tracks(id, t_title, duration, AlbumID)
VALUES  (1,'Pray You Catch Me',196,1),
        (2, 'Hold Up',221,1),
        (3, 'Он тебя целует',187,2),
        (4, 'Он тебя целует(Alika)',182,2),
        (5, 'Hit the Lights',255,3),
        (6, 'Jump In The Fire',281,3),
        (7, 'Mein Herz brennt',280,4),
        (8, 'Links 2-3-4',216,4),
        (9, 'Люберцы',182,5),
        (10, 'Дуся агрегат',285,5);

INSERT INTO  Collectoins(id, c_title, relisedate)
VALUES  (1, 'Collectoin-1',1990),
        (2, 'Collectoin-2',2017),
        (3, 'Collectoin-3',2021),
        (4, 'Collectoin-4',2024);

INSERT INTO  CollectionsTracks(CollectionID, TrackID)
VALUES  (1, 6),
        (1, 2),
        (2, 3),
        (2, 4),
        (3, 5),
        (3, 1),
        (3, 7),
        (4, 8),
        (4, 9),
        (4, 10);



