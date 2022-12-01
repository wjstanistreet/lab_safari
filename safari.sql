-- database creation and data insertion goes here

DROP TABLE animals;

CREATE TABLE animals (
    id SERIAL,
    name VARCHAR(255),
    age INT
);