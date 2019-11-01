create database Company1

create table Emp 
( id int primary key,
name nvarchar(100) not null,
dept_id int,
hiredate datetime,
salary money,
ismarried bit
)

create table department 
( id int primary key,
name nvarchar(100) not null,
mgr_id int,
branch_id int,
description text
)
insert into department
values 
(1,'IT',1,1,'IT section'),
(2,'HR',3,2,'human resources'),
(3,'Management',3,1,'Management'),
(4,'Finance',4,2,'Financial resources')

insert into Emp
values 
   (1 ,'Nouran', 1, '10-02-2019', 2500,0),
   (2,'Nourhan', 2 , '12-02-2019',1200,0),
   (3,'Ali',3,'10-03-1990',6000,1),
   (4,'bassant',1,'10-01-2018',4500,0)

alter table Emp 
add constraint fk_dept
foreign key (dept_id)
references department(id)

alter table department 
add constraint fk_emp
foreign key (mgr_id)
references Emp(id)
insert into Emp 
values (5,'Sara',2,'10-10-2010',4500,0)
/* 1  */

select count(id) as num_of_emp
from Emp

/* 2  */
select *
from emp
where name like('S%')
/* 3  */

select *
from emp
where salary between 1200 and 5000
/* 4  */

select name
from emp
where dept_id =null

insert into department
values 
(5,'marketing',4,3,' '),
(6,'legal',5,4,' ')
/* 5  */

select name
from department
where branch_id NOT In (1,2,5)
/* 6  */

select count(*)
from emp
group by dept_id

insert into Emp 
values (6,'Mohammed',4,'10-10-2010',3500,0)
/* 7  */

select *
from Emp
where name like ('%Mohammed%') and ismarried=0

/* 8  */

select dept_id,COUNT(*)
from Emp
group by dept_id
having COUNT(*) >=1

