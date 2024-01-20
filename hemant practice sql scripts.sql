
use batch84;

drop table hemant;

Create table hemant
(
   rollno int,
   student_name varchar(50),
   course varchar(50)
   );
   course
   
   
   drop table hemant;

Create table hemant
(
   rollno int primary key,
   student_name varchar(50),
   course varchar(50)
   );
   
   insert into hemant values(01,'hemant','top mentor');
   insert into hemant values (02,'hemlata','top mentor');
   insert into hemant values (03,'riti','upsc');
   
   insert into hemant values (04,'jagriti','fashion designer');
   insert into hemant values(05,'preeti','law');
    
    use batch 84;
    create table tutorials_tbl
    (
        tutorial_id INT NOT NULL AUTO_INCREMENT,
        tutorial_title VARCHAR(100) NOT NULL,
        tutorial_author VARCHAR(40) NOT NULL,
        submission_date DATE,
        PRIMARY KEY ( tutorial_id )
       );
select * from hemant

DROP TABLE IF EXISTS Persons;


CREATE TABLE Persons
( 
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255) NOT NULL,
Age int
);
INSERT INTO PERSONS Values (100, 'Mark', 'Jude', 30) ;
INSERT INTO PERSONS Values (101, 'John', 'Paul', null); 

select * from persons


DROP TABLE IF EXISTS Persons;


CREATE TABLE Persons
( 
ID int ,
LastName varchar(255),
FirstName varchar(255),
Age int
);


INSERT INTO PERSONS Values (NULL, 'John', 'Paul', NULL) ;

DELETE FROM PERSONS;
ALTER TABLE Persons MODIFY COLUMN Age Int NOT NULL 
INSERT INTO PERSONS Values (100, 'John', 'Paul', 30) ;
INSERT INTO PERSONS Values (101, 'Tom', 'Joe', NULL) ;

Select * FROM PERSONS;

DROP TABLE IF exists tblperson1;

CREATE TABLE IF not exists tblperson1
(
id int,
Name nvarchar(50), 
Age int
 ) ;
 
 insert into tblperson1  values ( 1 , 'Sam', 50);

insert into tblperson1  values ( 2 , 'Pam', 20);

select  * from tblperson1;

DROP TABLE IF EXISTS Persons1;

CREATE TABLE Persons1
( 
ID int NOT NULL, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255),
Age int,
CHECK (Age >=18)
);

INSERT INTO Persons1 Values (100, 'John', 'Green', 20);
INSERT INTO Persons1 Values (100, 'John', 'Green', 15);

Drop table if exists Persons;


ALTER TABLE tblperson1 ADD CONSTRAINT CK_tblPerson1_Age CHECK (Age>=0 AND Age < 100);

delete from tblperson1 WHERE ID =2;


CREATE TABLE Persons
 (  
 ID int NOT NULL,   
 LastName varchar(255) NOT NULL, 
 FirstName varchar(255),   
 Age int,   
 CONSTRAINT UC_Person UNIQUE (ID,LastName)
);
INSERT INTO Persons Values (100, 'John', 'Green', 20);
INSERT INTO Persons Values (101, 'Sam', 'Green', 20);
INSERT INTO Persons Values (100, 'Sam', 'Green', 20);

SHOW INDEX FROM Persons;

CREATE TABLE Persons
 (  
 ID int NOT NULL,   
 LastName varchar(255) NOT NULL, 
 FirstName varchar(255),   
 Age int
);

SHOW INDEX FROM Persons;


Drop Table if Exists suppliers;

CREATE TABLE suppliers 
(    
supplier_id INT AUTO_INCREMENT, 
name VARCHAR(255) NOT NULL,    
phone VARCHAR(15) NOT NULL UNIQUE,  
address VARCHAR(255) NOT NULL,   
PRIMARY KEY (supplier_id),    
CONSTRAINT uc_name_address UNIQUE (name , address)
);

Show index from suppliers; 


INSERT INTO Persons1 Values (100, 'John', 'Green', 20);

insert into suppliers values
(01,'Hemant',76676864,'ygiujsjadij')

Select * from suppliers;
insert into suppliers values
(01,'Reya',76676864,'ygiujsjadij')

DROP TABLE IF EXISTS  Students;

CREATE TABLE IF NOT EXISTS Students
(
Student_ID int NOT NULL,
Student_Name varchar(255) NOT NULL,
Class_Name varchar(255),
Age int,PRIMARY KEY (Student_ID)
);


DROP TABLE IF EXISTS  Persons;

CREATE TABLE IF NOT EXISTS  Persons
(
 ID int not null primary Key, 
Name varchar (45) NOT NULL,
 Age Int,  
City Varchar (25)
); 

INSERT INTO Persons(Id, Name, Age, City)  
 VALUES 
(1,'Robert', 15, 'Florida') ,  
 (2, 'Joseph', 35, 'California'),  
 (3, 'Peter', 40, 'Alask');


Select * from persons;
INSERT INTO Persons(Id, Name, Age, City)   VALUES 
(1,'Stephen', 15, 'Florida')

drop table  if exists riPerson;

drop table  if exists riGender;

create table riPerson 
(
ID int primary key,
Name varchar(50) ,
Email varchar(50),
GenderID int
) ;
create table riGender 
(
ID int not null Primary Key , 
Gender varchar(50) not null
);

insert into riPerson values ( 1, 'Jade', 'j@j.com', 2);
insert into riPerson values ( 2, 'Mary', 'm@m.com', 3);
insert into riPerson values ( 3, 'Martin', 'ma@ma.com', 1);
insert into riPerson values ( 4, 'Rob', 'r@r.com', Null);
insert into riPerson values ( 5, 'May', 'may@may.com', 2);
insert into riPerson values ( 6, 'Kristy', 'k@k.com', Null);
insert into riPerson values ( 7, 'John', 'j@j.com', 2);
insert into riPerson values ( 8, 'Simon', 's@s.com', 3);
insert into riPerson values ( 9, 'Rich', 'r@r.com', 1);
insert into riPerson values ( 10, 'Sara', 's@s.com', Null);
insert into riPerson values ( 11, 'Johnny', 'jo@j.com', 2);

insert into riGender  values(1, 'Male');
insert into riGender values(2, 'Female');
insert into riGender values(3, 'Unknown');
insert into riGender values(4, 'NA');
insert into riGender values(5, 'Default');

select * from riPerson;
select * from riGender;

alter table riperson drop CONSTRAINT riPerson_GenderId_FK;



ALTER TABLE riPerson ADD CONSTRAINT riPerson_GenderId_FK FOREIGN KEY (GenderID) REFERENCES riGender(ID);

delete from  rigender where ID = 2;
delete from  rigender where ID = 4;

ALTER TABLE riPerson ADD CONSTRAINT riPerson_GenderId_FK Foreign Key(GenderID)
 REFERENCES riGender(ID) ON DELETE SET NULL ON UPDATE SET NULL;


delete from  rigender where ID = 3;

select * from riGender;

select * from riPerson;
alter table riperson drop CONSTRAINT riPerson_GenderId_FK;

ALTER TABLE riPerson ADD CONSTRAINT riPerson_GenderId_FK Foreign Key(GenderID)
 REFERENCES riGender(ID) ON DELETE SET NULL ON UPDATE SET NULL;
 
select * from riGender;

select * from riPerson;

alter table riperson drop CONSTRAINT riPerson_GenderId_FK;

ALTER TABLE riPerson ADD CONSTRAINT riPerson_GenderId_FK Foreign Key(GenderID) 
REFERENCES riGender(ID) ON DELETE CASCADE ON UPDATE CASCADE;

delete from  rigender where ID = 1;


select * from riGender;

select * from riPerson;

DROP TABLE IF EXISTS  Persons;

CREATE TABLE Persons 
(    
ID int NOT NULL,  
LastName varchar(255) NOT NULL,   
FirstName varchar(255),  
Age int,   
City varchar(255) DEFAULT 'Delhi' 
);

INSERT INTO Persons Values (100, 'John', 'Green', 20,'Pune');

Select * from persons;

INSERT INTO Persons (ID, LastName, Age) Values (101, 'Tom', 40);

Drop Table if exists Orders;

CREATE TABLE Orders 
(    
ID int NOT NULL, 
OrderNumber int NOT NULL, 
OrderDate datetime default current_timestamp
);

Insert into Orders (ID, OrderNumber) Values (100, 1000);

Select * from Orders;
Insert into Orders (ID, OrderNumber) Values (101, 1000);
Select * from Orders;

Delete from orders
where id=100;
Insert into Orders (ID, OrderNumber) Values (100, 1000);


DROP TABLE IF EXISTS  Persons;

CREATE TABLE Persons 
( 
Personid int NOT NULL AUTO_INCREMENT, 
LastName varchar(255) NOT NULL,  
FirstName varchar(255),   
Age int,    
PRIMARY KEY (Personid)
);
INSERT INTO Persons (LastName, Age) values ('John', 40);
INSERT INTO Persons (LastName, Age) values ('John', 40);
INSERT INTO Persons (LastName, Age) values ('John', 40);

select * from Persons; 

Delete from persons where personid = 3;


Drop Table if exists Student_grade; 

CREATE TABLE Student_grade
(
id INT PRIMARY KEY AUTO_INCREMENT, 
Grade VARCHAR(250) NOT NULL,
priority ENUM('Low', 'Medium', 'High') NOT NULL
);

select * from Student_grade; 

INSERT INTO Student_grade(Grade, priority)VALUES('Good grades', 'High');
INSERT INTO Student_grade(Grade, priority)VALUES('Poor grades', 1);

use employees;

select first_name, count(first_name) as names_count from employees 
group by first_name HAVING count(first_name) > 250 order by first_name  DESC;

select * from salaries order by salary desc LIMIT 10; 
select * from salaries order by emp_no desc LIMIT 10;

INSERT INTO employees (emp_no,birth_date,first_name,last_name,gender,hire_date)
values (999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');


Select * from employees;

Select * from employees order by hire_date desc
limit 5;

delete from employees where emp_no = 999901;

Select * from employees order by hire_date desc
limit 5;

Select * from employees where emp_no = 999901;


Update employees SET First_name = 'Stella', last_name = 'Parkinson' , birth_date ='1990-12-31', 
Gender ='F' where emp_no = 999901;  

INSERT INTO employees (emp_no,birth_date,first_name,last_name,gender,hire_date)
values (999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');

Update from employees where EMP_No = 999901 to 099999;

select * from employees where emp_no = 999901;

UPDATE employees set First_name = 'John', last_name = 'Smith'where emp_no  = 999901;

Update employees SET First_name = 'Stella', 
last_name = 'Parkinson' , birth_date ='1990-12-31', Gender ='F' where emp_no = 999901;  

update employees set first_name = 'Hemant' where emp_no = 999901;


SELECT COUNT(distinct (from_date)) from Salaries;

DROP TABLE IF EXISTS  department_dup ; 

CREATE TABLE department_dup
 (  
dept_no  char(4),
dept_name  varchar(40),
dept_manager  varchar(40)
);

INSERT INTO  department_dup  (dept_no , dept_name )  select * from  departments ;

select * from department_dup;

select * from department_dup; 

INSERT INTO  department_dup(dept_no) values ('d101');

select dept_no, IFNULL (dept_name, 'No Department Name') as dept_name from department_dup;

select dept_no, ifnull(dept_manager,'Hemant')as dept_manager from department_dup;

select dept_no, COALESCE(dept_name, 'No Department Name') as dept_name from department_dup;

Drop table if exists tblEmployees;

Create table tblEmployees
(	
EmployeeID int,  
Name varchar(50),    
ManagerID int 
); 

insert into tblEmployees values (1, 'Mike',3);
insert into tblEmployees values (2, 'Rob',1);
insert into tblEmployees values (3, 'Todd',NULL);
insert into tblEmployees values (4, 'Ben',1);
insert into tblEmployees values (5, 'Sam',1);

select * from tblEmployees;






