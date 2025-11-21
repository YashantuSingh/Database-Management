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
 select * from personal where name like "s%";
select * from personal where name like "a%";
select * from personal where name like "ram%";
select * from personal where name like "rm%";
select * from personal where name like "%am%";
select * from personal where name like "r%" OR name like "s%";
select * from personal where name like "%r";
select * from personal where name like "%ar";
select * from personal where phone_no like "%21";
select * from personal where phone_no not like "%21";
select * from personal where name like "s%n";
select * from personal where name like "r%r";

select * from personal where name like "_am%";
select * from personal where name like "__m%";
select * from personal where name like "__l%";
select * from personal where name like "r_m%";


##Regular expression

select * from personal where name regexp 'r';
select * from personal where name regexp 'la';
select * from personal where name regexp 'man';


##Beginning
select * from personal where name regexp '^ra';
select * from personal where name regexp '^sa';

##LAST
select * from personal where name regexp 'an$';
select * from personal where name regexp 'ram|kapoor|khan';
select * from personal where name regexp '^ram|kapoor|^khan';
select * from personal where name regexp '^ram|poor|khan$';

select * from personal where name regexp '[is]';
select * from personal where name regexp '[rm]';
select * from personal where name regexp '[rm]a';
select * from personal where name regexp '[rmh]a';
select * from personal where name regexp '^[rs]';
select * from personal where name regexp '^r[am]';
