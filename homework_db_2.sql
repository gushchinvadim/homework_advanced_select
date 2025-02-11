
CREATE TABLE IF NOT EXISTS Musician (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS Genres (
    id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS MusicianGenre (
    MusitianID INTEGER REFERENCES Musician(id),
    GenreID INTEGER REFERENCES Genres(id),
    CONSTRAINT pk PRIMARY KEY (MusitianID, GenreID)
);
-- CREATE TABLE IF NOT EXISTS GenreMusician (
--     GenreID INTEGER REFERENCES Genres(id),
--     MusitianID INTEGER REFERENCES Musician(id),
--     CONSTRAINT pk PRIMARY KEY (GenreID, MusitianID)
-- );
CREATE TABLE IF NOT EXISTS  Albums (
    id SERIAL PRIMARY KEY,
    a_title VARCHAR(60) NOT NULL,  
    relisedate INTEGER CHECK(relisedate BETWEEN 1900 AND 2025)
);
CREATE TABLE IF NOT EXISTS  MusicianAlbums (
    MusicianID INTEGER REFERENCES Musician(id),
    AlbumID INTEGER REFERENCES Albums(id),
    CONSTRAINT pk1 PRIMARY KEY (AlbumID, MusicianID)
);
CREATE TABLE IF NOT EXISTS  Tracks (
    id SERIAL PRIMARY KEY,
    t_title VARCHAR(60) NOT NULL,
    duration INTEGER CHECK (duration BETWEEN 10 AND 900),
    AlbumID INTEGER NOT NULL REFERENCES Albums(id)
);
CREATE TABLE IF NOT EXISTS Collectoins (
    id SERIAL PRIMARY KEY,
    c_title VARCHAR(60) NOT NULL,
    relisedate INTEGER CHECK(relisedate BETWEEN 1900 AND 2025)
);
CREATE TABLE IF NOT EXISTS  CollectionsTracks (
    CollectionID INTEGER REFERENCES Collectoins(id),
    TrackID INTEGER REFERENCES Tracks(id),
    CONSTRAINT pk2 PRIMARY KEY (CollectionID, TrackID)
);