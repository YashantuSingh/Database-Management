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
 
 select * from personal where age>=18 and age<=20;
select * from personal where age>=18 or age<=20;
select * from personal where age<=20 and gender="M";
select * from personal where age<=20 and gender="M" and city="Agra";
select * from personal where age<=20 or city="Agra";
select * from personal where city="Bhopal" or city="Agra";
select * from personal where city="Bhopal" and city="Agra";
select * from personal where (city="Bhopal" or city="Agra")and gender="M";
select * from personal where not age>=20;
select * from personal where not (city="Bhopal" or city="Agra");
