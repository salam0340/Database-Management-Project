create table Employees(
EmployeeID int not null primary key,
FirstName varchar(50),
LastName varchar(50),
Department varchar(50),
Salary decimal(10,2),
Hire_Date date
);

insert into Employees(EmployeeID,FirstName,LastName,Department,Salary,Hire_Date)
values
(1,'John','Doe','HR',55000,'2021-05-14'),
(2,'Jane','Smith','IT',62000,'2020-11-22'),
(3,'Emily','Johnson','IT',57000,'2019-03-30'),
(4,'Mike','Brown','Sales',49000,'2023-01-12'),
(5,'Anna','Davis','HR',51000,'2022-09-10');

select * from employees;

update Employees
set Salary = Salary * 1.1
where Department = 'IT';
select * from employees;

update Employees
set Department = 'Sales'
where Salary < 60000;
select * from employees;