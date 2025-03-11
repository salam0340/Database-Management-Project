CREATE DATABASE DB_Lab;
USE DB_Lab;

create table Student(
student_id int not null primary key,
student_name varchar(100),
enrollment_year INT
);

insert into Student(student_id,student_name,enrollment_year)
values
(1,'Alice Johnson','2022'),
(2,'Bob Smith','2023'),
(3,'Abdus Salam','2024');
select * from student;

create table Course(
course_id int not null primary key,
course_name varchar(100),
credits int
);

insert into Course(course_id,course_name,credits)
values
(1,'Computer Networks',3),
(2,'Database System',3),
(3,'Computer Fundamental',3);
select * from course;

create table Enrollment(
enrollment_id int not null primary key,
student_id int,
course_id int,
foreign key (student_id) references Student(student_id),
foreign key (course_id) references Course(course_id)
);

insert into Enrollment(enrollment_id,student_id,course_id)
values
(1,1,1),
(2,2,2),
(3,3,3),
(4,1,2);
select * from Enrollment;

create table Grade(
grade_id int not null unique,
enrollment_id int,
garde varchar(50),
foreign key (enrollment_id) references Enrollment(enrollment_id)

);

insert into Grade(grade_id,enrollment_id,garde)
values
(1,1,'A-'),
(2,2,'A-'),
(3,3,'A-'),
(4,1,'A-')
;
select * from grade;

-- This query is gererate a report
select s.student_name,c.course_name,g.garde
from Student s
join Enrollment e on s.student_id = e.student_id
join Course c on e.course_id = c.course_id
join Grade g on e.enrollment_id = g.enrollment_id
order by s.student_id asc;




