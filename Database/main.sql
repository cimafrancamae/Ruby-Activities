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
    (1, 'Juan', 'Cruz', 18, 'Manila'),
    (2, 'Anne', 'Wall', 20, 'Manila'),
    (3, 'Theresa', 'Joseph', 21, 'Manila'),
    (4, 'Isaac', 'Gray', 19, 'Laguna'),
    (5, 'Zach', 'Matthews', 22, 'Marikina'),
    (6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students 
SET 
    first_name = 'Ivan', 
    middle_name = 'Ingram', 
    last_name = 'Howard', 
    age = 25, 
    location = 'Bulacan' 
WHERE id = 1;


DELETE FROM students WHERE id = 6;

SELECT COUNT(*) AS total_students FROM students;

SELECT * FROM students WHERE location = 'Manila';

SELECT ROUND(AVG(age),2) AS average_age FROM students;

SELECT * FROM students ORDER BY age DESC;

-- JOINS

CREATE TYPE valid_grade AS ENUM('A','B','C','D','E','F');

CREATE TABLE research_papers(
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    grade VALID_GRADE,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO research_papers(student_id, grade)
VALUES
    (1, 'A'),
    (1, 'F'),
    (1, 'B'),
    (2, NULL),
    (2, 'D'),
    (2, NULL),
    (3, 'A'),
    (4, 'C'),
    (5, 'E'),
    (6, 'B');

SELECT s.first_name, s.last_name, COUNT(r.*) AS paper_count
FROM students AS s
INNER JOIN research_papers AS r ON s.id = r.student_id
GROUP BY s.id, s.first_name, s.last_name
HAVING COUNT(r.*) > 1;

SELECT s.first_name, s.last_name, r.id AS research_paper_id, r.grade 
FROM students AS s
INNER JOIN research_papers AS r ON s.id = r.student_id
WHERE r.grade IS NULL;

