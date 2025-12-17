CREATE DATABASE collegeDB;
USE collegeDB;

-- Create Table (InnoDB)
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
)

INSERT INTO students VALUES
(1, 'Arjun', 75),
(2, 'Meera', 82),
(3, 'Rohit', 68);

SET autocommit = 0;


UPDATE students
SET marks = marks + 5
WHERE student_name = 'Meera';

COMMIT;

UPDATE students
SET marks = marks - 10
WHERE student_name = 'Rohit';

ROLLBACK;

UPDATE students
SET marks = 80
WHERE student_name = 'Arjun';

savepoint sp1;

UPDATE students
SET marks = 90
WHERE student_name = 'Meera';

rollback to sp1;
commit;
select * from students;





