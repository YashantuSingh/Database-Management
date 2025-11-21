create database school;
use school;

create table student(
st_id int,
st_name varchar(30),
st_age int
);

insert into student(st_id,st_name,st_age) values(1,"Raj",25);

select * from student;

insert into student(st_id,st_name,st_age) values(2,"Yashantu",26);
select * from student;
insert into student(st_id,st_name,st_age) values(3,"Yash",27),(4,"AArush",28);

alter table student add email varchar(40);

alter table student modify email int;

alter table student change email eami_id varchar(20);

alter table student modify eami_id varchar(20) after st_name;

alter table student drop column eami_id;

alter table student change st_age age int;

alter table student rename student2;
select * from student2;

alter table student2 change st_name student varchar(20);
alter table student2 change st_id id int;
 
truncate table student2;
drop table student2;
