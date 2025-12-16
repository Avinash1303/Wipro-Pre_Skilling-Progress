use wiprodb1612;

create table Employee (
EmployeeId int,
EmployeeName varchar(255),
EmployeeDept varchar(255),
salary float,
Designation varchar(255)
);

select * from Employee;

create table Customer (
CustomerId int NOT NULL PRIMARY KEY,
CustomerName varchar(255) NOT NULL,
email varchar(255) NOT NULL UNIQUE,
customerage int NOT NULL CHECK(customerage>18),
storeID int DEFAULT 0
);

drop table customer;
create table Customer (
CustomerId int NOT NULL PRIMARY KEY,
CustomerName varchar(255) NOT NULL,
email varchar(255) NOT NULL UNIQUE,
customerage int NOT NULL CHECK(customerage>18),
storeID int DEFAULT 0
);

create table Persons (

PersonId int PRIMARY KEY,

LastName varchar(255),

FirstName varchar(255),

Age float

);
 
SELECT * from Persons;
 
INSERT INTO Persons (PersonId,LastName,FirstName,Age)

VALUES ('123' , 'Patil' , 'Harish', 32);
 
create table Orders (

OrderID int NOT NULL,

OrderNumber int NOT NULL,

PersonID int,

PRIMARY KEY (OrderID),

FOREIGN KEY(PersonId) REFERENCES Persons(PersonID)

);
 
select * from Orders;
 
INSERT INTO Orders (OrderID, OrderNumber, PersonID)

VALUES (1, 1232443, 123);

INSERT INTO Persons (PersonId,LastName,FirstName,Age)

VALUES ('123' , 'bob' , 'pete', 22);

//Alter command 

ALTER table customer add customerphno int;

ALTER TABLE Customer MODIFY storeID DECIMAL;
 
ALTER  TABLE Customer DROP COLUMN storeID;
  
DROP TABLE orders;
 create database hello;
 DROP DATABASE hello;
 
TRUNCATE TABLE employee;

DML 

UPDATE Customer 
SET customerName = 'Jr'
WHERE customerId = 566;
 
UPDATE Customer 
SET customerName = 'Mike'
WHERE customerId IN ( 566 , 788);
 
DELETE FROM Customer WHERE customerId = '566';
 
 select * from customer;
 select customerName , customerId from customer;
 select * from customer where customerId = '567';
 select * from customer where customerId IN (567,674);
 
select * from customer where customerId BETWEEN 100 AND 674;

select * from customer where customerName LIKE '3%';

select * from customer LIMIT 1;

create database lab_activity;
use lab_activity;
drop database lab_activity;

create database StudentRepo;
use StudentRepo;

create table student (
studentId int PRIMARY KEY,
studentName varchar(255),
class varchar(255),
Marks int,
Gender varchar(255)
);
drop table student;

-----------------------------------------------------------

1. Create a database with name StudentRepo and create the columsn with have primary key and not null constraints








create table student (
studentId int PRIMARY KEY,
studentName varchar(255),
class varchar(255),
Marks int,
Gender varchar(255)
);

2.Insert the below mentioned row and columns in the database.
insert into student (StudentId,studentName,class,Marks,Gender) Values ('11','John Deo','Four','75','Female');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('2','Max Ruin','Three','85','Male');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('3','Arnold','Three','55','Male');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('4','Krish Star','Four','60','Feale');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('5','John Mike','Four','60','Female');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('6','Alex John','Four','55','Male');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('7','My John Rob','Five','78','Male');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('8','Asruid','Five','85','Male');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('9','Tes Qry','Six','78','Male');
insert into student (StudentId,studentName,class,Marks,Gender) Values ('10','Big John','Four','55','Female');

3.Update the marks of Arnold as 70 inpace of 55

Update student SET Marks = 70 where StudentId = 3;

select * from student;
4.Delete the row of Tes Qry as she has left the college

Delete from student where StudentId = 9;

5.Arrange the columns of Mark in ASC and DESC  order to check on who have received the highest and lowest marks


6.Select only the female candidates and display to check on how many girl students are enrolled

select * from student where Gender = 'Female';

7.Write a query to  select the student who scored the lowest marks

select studentname from student where Marks<=55;

8.Write a query to  select the student who scored the highest  marks 

select studentname from student where Marks=85;

select * from student;
----------------------------------------------------------------------------------
delete from student where StudentId = 12;
delete from student where StudentId = 13;
delete from student where StudentId = 14;
delete from student where StudentId = 15;
----------------------------------------------------------------------------------

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    age INT,
    marks INT
);

Insert a single student record.

insert into students (student_id,name,department,age,marks) Values ('1','Ak','AI','22','88');

Insert multiple student records in one query.

insert into students (student_id,name,department,age,marks) Values ('2','jr','CS','22','85'),
('3','jk','CS','25','75');

Insert a record without providing marks (allow NULL).
DESC students;
insert into students (student_id,name,department,age,marks) Values (4,'DD','ECE',27,NULL);

Insert data only into student_id, name, and department.
insert into students (student_id,name,department) Values ('5','Ak','mech');

Insert a student whose marks are greater than 80.

insert into students (student_id,name,department,age,marks) Values ('6','Ak','AI','22','81');

Display all student records.

select * from students;

Display only student name and department.

select name,department from students;

Display students from CSE department.

select name from students where department='CS';

Display students whose marks are above 70.

select name from students where marks>70;

Display students whose age is between 18 and 22.

select * from students where age between 18 AND 22;

Display students in descending order of marks.

select * from students ORDER BY marks DESC;

Find the total number of students.
select count(*) from students;
 
U – UPDATE Questions
Update marks of a student using student_id.

update students SET marks = '82' where student_id = 2;
 
 Increase marks of all students by 5.
 
Update department of a specific student.

update students SET department='CSE' where name = 'jr';

Set marks to 0 for students whose marks are NULL.

Update age for students in the ECE department.
 
DELETE Questions
Delete a student using student_id.

Delete students whose marks are below 40.

Delete all students from the MECH department.

Delete all records from the table.
 



