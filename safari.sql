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

-- Adding employees
INSERT INTO staff (name, employee_number) VALUES ('Radhika', 12345);
INSERT INTO staff (name, employee_number) VALUES ('Will', 267858);
INSERT INTO staff (name, employee_number) VALUES ('Isabel', 398766);
INSERT INTO staff (name, employee_number) VALUES ('Zsolt', 445777);
INSERT INTO staff (name, employee_number) VALUES ('Anna', 543212);
INSERT INTO staff (name, employee_number) VALUES ('Ed', 623451);
INSERT INTO staff (name, employee_number) VALUES ('Richard', 71234);
INSERT INTO staff (name, employee_number) VALUES ('Colin', 856899);

-- Adding assignments
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (1, 1, 'Monday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (2, 2, 'Monday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (3, 3, 'Monday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (4, 2, 'Tuesday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (5, 2, 'Tuesday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (6, 1, 'Wednesday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (6, 3, 'Wednesday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (7, 4, 'Thursday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (8, 4, 'Friday');

SELECT * FROM assignments;