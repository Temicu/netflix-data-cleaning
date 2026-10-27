CREATE TABLE titles (
    show_id          TEXT PRIMARY KEY,
    type             TEXT NOT NULL,
    title            TEXT NOT NULL,
    release_year     INTEGER,
    rating           TEXT,
    date_added       DATE,
    duration_mins    INTEGER,
    duration_seasons INTEGER,
    description      TEXT
);

CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country    TEXT NOT NULL UNIQUE
);

CREATE TABLE title_countries (
    show_id    TEXT NOT NULL REFERENCES titles(show_id),
    country_id INTEGER NOT NULL REFERENCES countries(country_id),
    PRIMARY KEY (show_id, country_id)
);

SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    genre    TEXT NOT NULL UNIQUE
);

CREATE TABLE title_genres (
    show_id  TEXT NOT NULL REFERENCES titles(show_id),
    genre_id INTEGER NOT NULL REFERENCES genres(genre_id),
    PRIMARY KEY (show_id, genre_id)
);       

CREATE TABLE cast_members (
    cast_id SERIAL PRIMARY KEY,
    name    TEXT NOT NULL UNIQUE
);

CREATE TABLE title_cast (
    show_id TEXT NOT NULL REFERENCES titles(show_id),
    cast_id INTEGER NOT NULL REFERENCES cast_members(cast_id),
    PRIMARY KEY (show_id, cast_id)
);

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name        TEXT NOT NULL UNIQUE
);

CREATE TABLE title_directors (
    show_id     TEXT NOT NULL REFERENCES titles(show_id),
    director_id INTEGER NOT NULL REFERENCES directors(director_id),
    PRIMARY KEY (show_id, director_id)
);

SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' ORDER BY table_name;SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' ORDER BY table_name;