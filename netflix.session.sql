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
