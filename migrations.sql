
CREATE DATABASE find_a_bandmate;

\c find_a_bandmate;

CREATE TABLE instruments (id SERIAL PRIMARY KEY, name VARCHAR(255), sound VARCHAR(255));

CREATE TABLE musicians (id SERIAL PRIMARY KEY, name VARCHAR(255));

CREATE TABLE bandmates (id SERIAL PRIMARY KEY, instrument_id INTEGER, musician_id INTEGER);

