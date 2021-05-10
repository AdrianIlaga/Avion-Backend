CREATE TABLE classrooms (
  id SERIAL PRIMARY KEY,
  student_id INTEGER not NULL,
  section VARCHAR(1) NOT NULL
)

INSERT INTO classrooms (student_id, section)
  VALUES (1, 'A'),
  (2, 'A'),
  (3, 'B'),
  (4, 'C'),
  (5, 'B'),
  (6, 'A'),
  (7, 'C'),
  (8, 'B'),
  (9, 'B'),
  (10, 'C');

-- Inner Join
SELECT * FROM students s INNER JOIN classrooms c on c.student_id = s.id

-- Left Join
SELECT * FROM students s LEFT JOIN classrooms c on c.student_id = s.id

-- Right Join
SELECT * FROM students s RIGHT JOIN classrooms c on c.student_id = s.id

-- Full Join
SELECT * FROM students s FULL JOIN classrooms c on c.student_id = s.id

--Bonus Joke
--Why should you never assign old programmers to database?
--'Cause they might get JOIN pain