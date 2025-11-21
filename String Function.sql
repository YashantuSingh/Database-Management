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
select id, upper(name),percentage from personal2;
select id, ucase(name),percentage from personal2;
select id, lower(name),percentage from personal2;
select id, lcase(name),percentage from personal2;

select id, name, char_length(name),percentage from personal2;
select id, name, length(name),percentage from personal2;
select id, concat(name,percentage) from personal2;
select id, concat(name," ",percentage) from personal2;
select id, concat(name,"-",percentage) from personal2;

select concat("Yashantu Awana");
select concat_ws(" ","Yashantu", "Awana","Hello","Class");
select concat_ws("-", "Awana","Hello","Class");
select concat_ws(" ", "Awana","Hello","Class");

select trim(   "Yashantu Awana"  );
select ltrim(   "Yashantu Awana"  );
select rtrim(   "Yashantu Awana"  );

select position("World" in "Helloworld");
select position("o" in "Helloworld");
select instr("Helloworld","ell");
select locate("ell","Helloworld");
select locate("l","Helloworld",10);
select locate("l","Helloworld",3);
select locate("l","Helloworld",7);

select substring("Yashantu Singh",5);
select substring("Yashantu Singh",3,6);
select substring("Yashantu Singh",-6,3);
select substr("Yashantu Singh",-6,3);
select mid("Yashantu Singh",-6,3);
select substring_index("www.YashantuSingh.net",".",1);
select substring_index("www.YashantuSingh.net",".",2);
select substring_index("www.YashantuSingh.net","e",2);

select strcmp("Yashantu Singh","Yashantu Singh");
select strcmp("Yashantu Singh","Yashantu");
select strcmp("Yashantu","Yashantu Singh");

select format(235.3568,3);

select left("Yashantu Singh",3);
select left("Yashantu Singh",5);
select right("Yashantu Singh",3);

select rpad("Yashantu Singh",20,"-");
select rpad("Yashantu Singh",20,"*");
select lpad("Yashantu Singh",20,"*");

select reverse("Yashantu Singh");
select replace("Yashantu Singh","Yashantu","Mr.");

select field("a","X","a","K");
select field("a","X","A","K");
select field("b","X","A","K");
select field("b","X","a","b");
select field(5,0,1,2,3,4,5);
select field("ram","Ram","Mohan","Shyam");
select find_in_set("Mohan","Ram,Mohan,Shyam");