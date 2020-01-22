/*Create database*/
CREATE DATABASE star_wars;
\connect star_wars;


/*Create schema*/
CREATE SCHEMA base;


/*Create tables*/
CREATE TABLE base.planet(
  id INTEGER PRIMARY KEY,
  name TEXT,
  rotation_period INTEGER,
  orbital_period INTEGER,
  diameter INTEGER,
  climate TEXT,
  gravity TEXT,
  terrain TEXT,
  surface_water TEXT,
  population BIGINT,
  created_date TIMESTAMP,
  updated_date TIMESTAMP,
  url TEXT
);

CREATE TABLE base.people(
    id INTEGER PRIMARY KEY,
    name TEXT,
    height INTEGER,
    mass FLOAT,
    hair_color TEXT,
    skin_color TEXT,
    eye_color TEXT,
    birth_year TEXT,
    gender TEXT,
    planet_id INTEGER NOT NULL REFERENCES base.planet(id),
    created_date TIMESTAMP,
    updated_date TIMESTAMP,
    url TEXT
);
