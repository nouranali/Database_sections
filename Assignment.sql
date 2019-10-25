create database Faculty

create table Student (
StdID int primary key,
StdName varchar(200),
StdAddress varchar(200),
telephone char (11),
Email char(255),
RollNo int default 0
)

alter table Student
add constraint add_cons check (StdAddress in ('Cairo','Giza','Mansoura'))

alter table Student
add constraint ph_cons unique (telephone)

insert into Student
values 
(1002 , 'karim ahmed','Cairo','01001122333',NULL,NULL),
(1003,'mona ali','Giza','01111998999',null,1),
(1004,'aya islam','Giza',null,null,2);

select * 
from Student
where StdName = 'mona ali'

select * 
from Student
where StdAddress = 'Giza' and RollNo =2
