create table Person(
PersonID int, 
FirstName Varchar(30), 
LastName Varchar(30), 
Address Varchar(40), 
City Varchar(30), 
Dept Varchar(30)
);

insert into Person values (11,'akkk','kum','porur','chennai','IT');
insert into Person values (12,'Av','Yu','abc','US','DB');
insert into Person values (13,'mike','jr','awf','kolathur','Cloud');
insert into Person values (14,'Ana','jk','3rd street','awdfa','backend');
insert into Person values (15,'bob','kd','xyx,hellostreet','Bangalore','IT');

select * from Person where dept = 'IT' ORDER BY PersonID DESC;

select * from Person order by PersonID DESC LIMIT 3;

set autocommit = 0;
use wiprodb1612;
delete from Person where personID = 12;

select * from Person;

rollback;