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
 ##IN Operators(in place of multiple or)

select * from personal where age=18 or age=20 or age=19 or age=24;
select * from personal where age in (18,21);
select * from personal where age in (18,21,19);
select * from personal where age not in (18,21,19);
select * from personal where city in ("Delhi","Bhopal");
select * from personal where city not in ("Delhi","Bhopal");
select * from personal where id in (1,3,4);

##BETWEEN operator
select * from personal where age between 18 and 20;
select * from personal where age not between 18 and 20;
select * from personal where id between 2 and 5;
select * from personal where id not between 2 and 5;
select * from personal where name between "a" and "k";
