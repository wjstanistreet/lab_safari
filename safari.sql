-- database creation and data insertion goes here

DROP TABLE assignments;
DROP TABLE animals;
DROP TABLE staff;
DROP TABLE enclosures;



CREATE TABLE enclosures (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closed_for_maintenance BOOLEAN
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employee_number INT
);

CREATE TABLE animals (
    id SERIAL,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

CREATE TABLE assignments (
    id SERIAL,
    employee_id INT REFERENCES staff(id),
    enclosure_id INT REFERENCES enclosures(id),
    day VARCHAR(255)
);

-- CREATE
--Adding enclosures
INSERT into enclosures (name, capacity, closed_for_maintenance) VALUES ('BNTA Lions', 3, False);
INSERT into enclosures (name, capacity, closed_for_maintenance) VALUES ('BNTA Birds', 4, True);
INSERT into enclosures (name, capacity, closed_for_maintenance) VALUES ('BNTA Bears', 6, False);
INSERT into enclosures (name, capacity, closed_for_maintenance) VALUES ('BNTA Reptiles', 5, True);

-- Adding animals
-- Lions
INSERT into animals (name, type, age, enclosure_id) VALUES ('Simba', 'Lion', 50, 1);
INSERT into animals (name, type, age, enclosure_id) VALUES ('Nala', 'Lion', 45, 1);
INSERT into animals (name, type, age, enclosure_id) VALUES ('Scar', 'Lion', 65, 1);

-- Birds
INSERT into animals (name, type, age, enclosure_id) VALUES ('Big bird', 'Bird', 6, 2);
INSERT into animals (name, type, age, enclosure_id) VALUES ('Iago', 'Bird', 8, 2);

-- Bears
INSERT into animals (name, type, age, enclosure_id) VALUES ('Pooh', 'Bear', 16, 3);
INSERT into animals (name, type, age, enclosure_id) VALUES ('Baloo', 'Bear', 20, 3);

-- Reptiles
INSERT into animals (name, type, age, enclosure_id) VALUES ('Sir Hiss', 'Snake', 10, 4);
INSERT into animals (name, type, age, enclosure_id) VALUES ('Tick Tock', 'Snake', 17, 4);
INSERT into animals (name, type, age, enclosure_id) VALUES ('Rainbow', 'Snake', 20, 4);


