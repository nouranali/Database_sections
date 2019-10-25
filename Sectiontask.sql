create database Company

create table Emp (
id int primary key,
name nvarchar(100) not null,
dept_id int,
hiredate datetime,
salary money default 1200,
isMarried bit,
constraint salary_con check (salary between 1200 and 30000)
)
create table Department (
id int primary key,
name nvarchar(100) not null unique,
MGR_ID int,
Branch_id int,
description text
)
create table Branch (
id int primary key,
location varchar(50),
phone char(11),
constraint loc_con check (location in ('Mansoura','Cairo','ALexandria','Damietta') )

)
Alter table Emp 
add constraint fk_dept
foreign key (dept_id)
references Department (id)

alter table Department
add constraint fk_empid
foreign key (MGR_ID)
references Emp(id)

alter table Department
add constraint fk_br
foreign key (branch_id)
references Branch(id)


