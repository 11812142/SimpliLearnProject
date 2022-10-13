create database school
use school
create table student(student_id int primary key,student_name varchar(25),student_class int check(student_class<=12))
create table subjects(subjects_id int primary key,subjects_name varchar(25))
create table classes(class_id int primary key,class_strength varchar(30))

create index student_index on student(student_id,student_name,student_class)
create index subjects_index on subjects(subjects_id,subjects_name)
create index classes_index on classes(class_id,class_strength)

insert into student values(1,'Aditi',12)
insert into student values(2,'Ajay',11)
insert into student values(3,'Shefali',8)
insert into student values(4,'Sawaraj',12)
insert into student values(5,'Riya',10)

insert into subjects values(101,'EVS')
insert into subjects values(166,'Science')
insert into subjects values(243,'Hindi')
insert into subjects values(301,'English')
insert into subjects values(445,'Maths')

insert into classes values(01,'Fourty Five')
insert into classes values(02,'Twenty')
insert into classes values(03,'Thirty')
insert into classes values(04,'Fourty Four')
insert into classes values(05,'Fifty')

select*from student
select*from subjects
select*from classes
