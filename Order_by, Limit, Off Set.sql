create table personal(
Id int,
Name varchar(20),
Age int,
Gender varchar(10),
Phone_No int,
City varchar(20)
);

insert into personal(Id,Name,Age,Gender,Phone_No,City)
values 
(1, "Ram Kumar",19, "M", 4022155, "Agra"),
(2, "Sarita Kumari",21, "F", 4034421, "Delhi"),
(3, "Salman khan",20, "M", 4056221, "Agra"),
(4, "Juhi chawla",18, "F", 4089821, "Bhopal"),
(5, "Anil kapoor",22, "M", 4025221, "Agra"),
(6, "john Abraham",21, "M", 4033776, "Delhi");
 
 select * from personal;
 select * from personal order by name;
select * from personal order by name asc;
select * from personal order by name desc;
select * from personal order by age;
select * from personal order by phone_no;
select * from personal order by city;

select * from personal order by name, city;

select * from personal where city="Agra" order by name desc;

select distinct city from personal;
select distinct age from personal;
select distinct age from personal order by age;
select distinct city from personal order by city desc;

##limit
select*from personal;
select*from personal limit 3;
select*from personal limit 4;
select*from personal where city="agra";
select*from personal where city="agra" limit 2;

##offset
select*from personal limit 3,3;
select*from personal limit 3,2;
select*from personal limit 4,2;
select*from personal limit 5,2;
