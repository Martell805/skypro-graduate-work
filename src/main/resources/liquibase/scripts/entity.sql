-- liquibase formatted sql

-- changeSet andrew:1
CREATE TABLE users
(
    id         SERIAL NOT NULL PRIMARY KEY,
    email      TEXT,
    first_name TEXT,
    last_name  TEXT,
    phone      TEXT,
    reg_date   DATE   NOT NULL,
    image_id   INTEGER,
    password   TEXT,
    username   TEXT
);

--changeset mara:1
create table ads
(
    id          SERIAL PRIMARY KEY,
    title       TEXT,
    price       INTEGER,
    description TEXT,
    image_id    INTEGER,
    author_id   INTEGER REFERENCES users (id)
);

-- changeSet martell:1
CREATE TABLE avatars
(
    id      SERIAL PRIMARY KEY,
    user_id INTEGER,
    path    TEXT
);

CREATE TABLE posters
(
    id     SERIAL PRIMARY KEY,
    ads_id INTEGER,
    path   TEXT
);

-- changeSet igor:1
Create TABLE comments
(
    id         SERIAL NOT NULL PRIMARY KEY,
    author     INTEGER,
    text       TEXT,
    created_at TIMESTAMP,
    ads_id     INTEGER,
    author_id  INTEGER
);
