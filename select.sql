SELECT *  FROM student_table ORDER BY first_name ASC;

CREATE Table student_table(
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT,  
  grade CHAR(2),
  course VARCHAR(50),
  email VARCHAR(100),
  dob DATE,
  blood_group VARCHAR(5),
  country VARCHAR(50)
)

INSERT INTO student_table(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES('john', 'doe', 20, 'A+', 'Maths', 'john.doe@example.com', '1999-01-01', 'O+', 'USA'),
('alice', 'smith', 22, 'B', 'Physics', NULL, '2001-05-15', 'A-', 'Canada'),
('bob', 'johnson', 21, 'A', 'Chemistry', 'bob.johnson@example.com', '2002-08-22', 'B+', 'UK'),
('charlie', 'brown', 23, 'A-', 'Biology', 'charlie.brown@example.com', '2000-12-10', 'O-', 'Australia'),
('david', 'williams', 20, 'B+', 'Computer Science', NULL, '2003-03-05', 'AB+', 'Germany'),
('emma', 'jones', 19, 'A+', 'Mathematics', 'emma.jones@example.com', '2004-07-30', 'O+', 'France'),
('frank', 'miller', 24, 'C', 'History', 'frank.miller@example.com', '1999-11-12', 'B-', 'USA'),
('grace', 'davis', 22, 'A-', 'English', NULL, '2001-06-18', 'A+', 'Italy'),
('henry', 'wilson', 21, 'B+', 'Economics', 'henry.wilson@example.com', '2002-04-25', 'O-', 'Spain'),
('isabella', 'martin', 23, 'A', 'Philosophy', NULL, '2000-09-14', 'AB-', 'Netherlands'),
('jack', 'thomas', 20, 'B-', 'Engineering', 'jack.thomas@example.com', '2003-02-28', 'B+', 'Sweden'),
('lisa', 'anderson', 22, 'A', 'Physics', 'lisa.anderson@example.com', '2001-07-10', 'O+', 'Canada'),
('mark', 'robinson', 21, 'B+', 'Mathematics', NULL, '2002-11-15', 'A-', 'USA'),
('nina', 'harris', 23, 'A-', 'Computer Science', 'nina.harris@example.com', '2000-05-21', 'B+', 'UK'),
('oliver', 'clark', 20, 'B', 'Chemistry', 'oliver.clark@example.com', '2003-08-30', 'AB+', 'Germany'),
('paul', 'lewis', 19, 'C+', 'Biology', NULL, '2004-12-05', 'O-', 'Australia'),
('quinn', 'walker', 24, 'A+', 'Engineering', 'quinn.walker@example.com', '1999-09-18', 'B-', 'France'),
('rachel', 'hall', 22, 'B-', 'Economics', 'rachel.hall@example.com', '2001-03-12', 'A+', 'Italy'),
('steven', 'allen', 21, 'A', 'Philosophy', NULL, '2002-06-25', 'O-', 'Spain'),
('tina', 'young', 23, 'A-', 'English', 'tina.young@example.com', '2000-10-07', 'AB-', 'Netherlands'),
('victor', 'king', 20, 'B+', 'History', 'victor.king@example.com', '2003-01-29', 'B+', 'Sweden');


TRUNCATE table student_table;

SELECT DISTINCT blood_group from student_table;

SELECT * from student_table 
  WHERE country = 'USA';

SELECT * from student_table 
  WHERE country = 'USA' OR course = 'Italy';

SELECT upper(first_name) as "First Name", * FROM student_table

SELECT concat(first_name, ' ', last_name) from student_table;

SELECT length(first_name) from student_table

SELECT avg(age) from student_table;

SELECT count(*) from student_table;

SELECT * from student_table WHERE country <> 'USA';

SELECT * from student_table WHERE email IS  NULL;

SELECT COALESCE(email, 'No email provided'), * from student_table;

SELECT * FROM student_table WHERE country = 'USA' OR country = 'Canada' OR country = 'UK';

SELECT * FROM student_table WHERE country NOT IN('USA', 'Canada');

SELECT * FROM student_table WHERE dob BETWEEN '2000-01-01' and '2005-01-01' ORDER BY dob;

SELECT * FROM student_table WHERE first_name ILIKE 'A%';

SELECT * FROM student_table LIMIT 5 OFFSET 5 * 0;
SELECT * FROM student_table LIMIT 5 OFFSET 5 * 1;
SELECT * FROM student_table LIMIT 5 OFFSET 5 * 2;
SELECT * FROM student_table LIMIT 5 OFFSET 5 * 3;
SELECT * FROM student_table LIMIT 5 OFFSET 5 * 4;