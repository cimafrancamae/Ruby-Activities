CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL CHECK (age > 0),
    location VARCHAR(255) NOT NULL
);

INSERT INTO students (id, first_name, last_name, age, location) 
VALUES 
    (1, 'Sheldon', 'Cooper', 27, 'Pasadena'),
    (2, 'Leonard', 'Hofstadter', 26, 'Pasadena'),
    (3, 'Penny', 'Teller', 22, 'Pasadena'),
    (4, 'Howard', 'Wolowitz', 25, 'Pasadena'),
    (5, 'Rajesh', 'Koothrappali', 26, 'Pasadena'),
    (6, 'Bernadette', 'Rostenkowski', 22, 'Pasadena');

UPDATE students 
SET 
    first_name = 'Ivan', 
    middle_name = 'Ingram', 
    last_name = 'Howard', 
    age = 25, 
    location = 'Bulacan' 
WHERE id = 1;


DELETE FROM students WHERE id = 6;
