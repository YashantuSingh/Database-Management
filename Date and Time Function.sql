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

#Date Function
select current_date();
select curdate();
select sysdate();
select now();

select date("2025-10-14 10:09:21");
select month("2025-10-14 10:09:21");
select monthname("2025-10-14 10:09:21");
select year("2025-10-14 10:09:21");
select quarter("2025-10-14 10:09:21");
select dayname("2025-10-13 10:09:21");
select dayofmonth("2025-10-14 10:09:21");
select day("2025-10-14 10:09:21");
select dayofweek("2025-10-14 10:09:21");
select week("2025-10-14 10:09:21");
select weekday("2025-10-14 10:09:21");
select yearweek("2025-10-14 10:09:21");
select last_day("2025-10-14 10:09:21");

select extract(month from "2025-10-14 10:09:21");
select extract(year from "2025-10-14 10:09:21");
select extract(week from "2025-10-14 10:09:21");
select extract(day from "2025-10-14 10:09:21");
select extract(hour from "2025-10-14 10:09:21");
select extract(minute from "2025-10-14 10:09:21");
select extract(second from "2025-10-14 10:09:21");

select adddate("2025-10-14", interval 10 day);
select adddate("2025-10-14", interval 1 month);
select adddate("2025-10-14", interval 1 year);
select date_add("2025-10-14", interval 500 minute);
select subdate("2025-10-14", interval 1 day);
select datediff("2025-10-14","2025-10-13");

#Time Function
select current_time();
select curtime();
select current_timestamp();
select localtime();
select localtimestamp();
select time("2025-10-14 10:09:21");
select hour("2025-10-14 10:09:21");
select minute("2025-10-14 10:09:21");
select second("2025-10-14 10:09:21");
select timediff("10:09:21","09:09:21");