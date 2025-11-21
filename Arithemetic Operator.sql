create table personal2(
Id int,
Name varchar(20),
percentage int,
Age int,
Gender varchar(10),
Phone_No int,
City varchar(20)
);
insert into personal2(Id,Name,percentage,Age,Gender,Phone_No,City)
values 
(1, "Ram Kumar",45, 19, "M", 4022155, "Agra"),
(2, "Sarita Kumari",55, 21, "F", 4034421, "Delhi"),
(3, "Salman khan",62, 20, "M", 4056221, "Agra"),
(4, "Juhi chawla",47, 18, "F", 4089821, "Bhopal"),
(5, "Anil kapoor",74, 22, "M", 4025221, "Agra"),
(6, "john Abraham",64, 21, "M", 4033776, "Delhi"),
(7, "Shahid Kapoor", 52, 20, "M", 4022784, "Agra");

select * from personal2;

##Arithmetic operator
select 5+6;
select 5-6;
select 5*6;
select 5/3;

select id, name,(percentage+5) as new_percentage from personal;

select pi();
select round(4.51);
select round(4.49);
select round(-4.49);
select round(1234.987,2);
select round(1234.987,1);

select ceil(1.23); 
select floor(4.56); 
select pow(2,2);
select pow(2,3);
select pow(2,4);

select sqrt(16);
select sqrt(4);
select sqrt(5);


select round(sqrt(10),(2));

select rand();		#(0,1)
select rand()*100;	#(0,100)

select abs(-56);
select abs(-56.25);	#absolute values they does not consider +,-
select abs(56.25);

select sign(23);
select sign(0);		#only shows +1,-1 signs value
select sign(-23);