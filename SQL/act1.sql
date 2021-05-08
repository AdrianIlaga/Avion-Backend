CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) not NULL,
  middle_name VARCHAR(100) DEFAULT 'BLANK',
  last_name VARCHAR (100) not NULL,
  age INT not NULL,
  location VARCHAR(100) not NULL
)

INSERT INTO students (first_name, last_name, age, location)
  VALUES ('Juan', 'Cruz', 18, 'Manila'),
         ('Anne', 'Wall', 20 , 'Manila'),
         ('Theresa', 'Joseph', 21 , 'Manila'),
         ('Isaac', 'Gray', 19 , 'Laguna'),
         ('Zack', 'Matthews', 22 , 'Marikina'),
         ('Finn', 'Lam', 25 , 'Manila');

UPDATE students SET 
  first_name = 'Ivan', 
  middle_name = 'Ingram', 
  last_name = 'Howard',
  age = 25,
  location = 'Bulacan'
 WHERE id = 1;

 DELETE FROM students WHERE id = 6;