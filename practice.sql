create database Employee;
use Employee;

create table employee_details(
Employee_id int(50),
First_Name text(100),
Last_Name text(100),
Salary Bigint(70),
Joining_date varchar(50),
Department text);

select * from employee_details;
insert into employee_details(Employee_id,First_Name,Last_Name,Salary,Joining_date,Department)values
(1,'venkatesh','S',100000,'08/28/2015','Banking'),
(2,'Ragavi','P',75000,'08/28/2015','Business'),
(3,'Gopinath','C',50000,'03/02/2016','Pharma'),
(4,'Dinesh','G',50000,'03/02/2016','Insurance'),
(5,'Saibaba','E',40000,'07/08/2017','Software'),
(6,'hasan','S',29000,'07/08/2016','Manufacturing'),
(7,'Divya','P',50000,'07/08/2016','Healthcare'),
(8,'Arivandan','R',40000,'07/08/2016','Healthcare'),
(9,'Sathish','MD',45000,'03/02/2016','Automobile'),
(10,'Prasanth','PKP',34000,'07/08/2016','Insurance'),
(11,'Vijay','R',25684,'03/02/2016','Business'),
(12,'Sivakumar','K',54789,'03/02/2016','Software');
select * from employee_details;
create table employee_id(
Employee_ref_id bigint,
Incentive_date varchar(150),
Incentive_amount bigint);
drop table employee_details;
drop table employee_id;
select * from employee_id;
insert into employee_id(Employee_ref_id,Incentive_date,Incentive_amount)values
(1,"01-FEB-16",5000),
(2,"01-FEB-16",3000),
(3,"01-FEB-17",4000),
(1,"01-JAN-17",4500),
(2,"01-JAN-17",3500);

-- 1 get all employee details the employee table
select * from employee_details;

-- 2 get First_namefrom employee table
select First_Name,Last_Name from employee_details;

-- 3 get First_Name from employee table using  alias name "Employee Name"
select First_Name as Employee_Name from employee_details;

-- 4 get First_Name from table in upper case
select upper(First_Name) from employee_details;

-- 5 get First_Name as Employee_name from lower case 
select lower(First_Name) from employee_details;

-- 6 get unique Department from employee table
select distinct Department from employee_details;

-- 7 select first 3 characters of First_Name from EMPLOYEE
select substring(First_Name,1,3) as extractstring from employee_details;

-- 8  get position of 'a' in name 'ragavi' from employee table 
select position('a' in 'ragavi');

-- 9 get first_name from employee table after removing while spaces from right side
select rtrim(First_Name) from employee_details;

-- 10 get first_name from employee table after removing whiles spaces from left side
SELECT LTRIM(First_Name) from employee_details;

-- 11 get length of first_name from employee table
select length(First_Name) from employee_details;

-- 12 get of First_Name from employee table after replacing 'a' with '$'
select replace(First_Name,'a','$') from employee_details;  

-- 13 get first_name and last_name as single column from employee table separted by a '_'
select concat(First_Name,'_',Last_Name) from  First_Name;

-- 14 get First_Name,joining year,joining month and joining date from employee details
select First_Name,substring(Joining_date,7,4),substring(Joining_date,4,2),substring(Joining_date,1,2) from employee_details;

-- 15 get all employee details from the employee table order by First_Name ascending
select * from employee_details order by First_Name asc;

-- 16 get all employee details from the employee table order by First_Name descending
select * from employee_details order by First_Name desc;

-- 17 get all employee details from the employee table order by First_Name asceding and descending salary
select First_Name,Salary from employee_details order by  First_Name asc,Salary desc;

-- 18 get employe details from employee table whose employee_Name is "Dinesh"
select * from  employee_details where First_Name = "Dinesh" or First_Name = "Roy";

-- 19 get employe details from employee table whose employee_Name are  "Dinesh" and "roy"
select * from employee_details where First_Name = 'Dinesh' or 'Roy';

-- 20 get employe details from employee table whose employee_Name are not "Dinesh" and "roy"
select * from employee_details where First_Name <> 'Dinesh' and First_Name <> 'Roy';

-- 21 get employe details from employee table whose first name start with 's'
select * from employee_details where First_Name Like 's%';

-- 22 get employe details from employee table whose first name start with 'v'
select * from employee_details where First_Name Like 'v%';

-- 23 get employe details from employee table whose first name ends with 'n' and name contains 4 letter
select * from employee_details where First_Name Like '%n';

-- 24 get employe details from employee table whose first name ends with 'n' and name contains 4 letter
select * from employee_details where First_Name Like '___n';

-- 25 get employe details from employee table whose first name Start with 'j' and name contains 4 letter
select * from employee_details where First_Name Like 'J___';

-- 26  get employee details from employee table who's salary greater then 60000
select * from employee_details where Salary>60000;

-- 27 get employee details from employee table who's salary lessthan then 80000
select * from employee_details where Salary<80000;

-- 28 get employee details from employee table who's salary between 50000 and 80000
select * from employee_details where Salary>50000 and Salary<80000;

-- 29 get employee details from employee table whose name is venkatesh and ragavi
select * from employee_details where First_Name='venkatesh'or First_Name='ragavi';

-- 30  get employee details from employee table who has '%' in last_Name
select * from employee_details where Last_Name like '%!%%' escape '!';

