use studentrepo;

select * from student;

select Upper('Arnold') AS name_upper, Length(studentName) AS len from student;

select lower('Arnold') AS name_upper from student;

select ABS(Marks) from student;
select * from student;


update student set Marks = 75.2366 where StudentId = 1;

select power ( 2, 3 );
select ABS (-10.2);
select Round(10.2);
select CEIL(10.2);
select floor(10.2);
select MOD (2,6);
------------------------------------------------------------------
select length('sql');
select substring('afyaf',2,4);
select concat('hello','world');
select trim('h    i');
select replace('sql guide','guide','sql');
------------------------------------------------------------------
select now();
select curdate();
select datediff('2025-12-17','2025-12-19');
select month('2025-2-17');
select year('2025-12-17');
select adddate('day','10','2025-12-17');