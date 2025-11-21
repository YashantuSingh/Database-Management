select * from company;
use sales;

CREATE TABLE company (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    experience INT,
    gender VARCHAR(10)
);
INSERT INTO company (emp_id, name, department, salary, experience, gender) VALUES
(1, 'Alice', 'HR', 40000, 3, 'Female'),
(2, 'Bob', 'Finance', 60000, 6, 'Male'),
(3, 'Charlie', 'IT', 55000, 4, 'Male'),
(4, 'David', 'IT', 80000, 10, 'Male'),
(5, 'Eva', 'Finance', 45000, 2, 'Female'),
(6, 'Frank', 'HR', 50000, 7, 'Male'),
(7, 'Grace', 'IT', 30000, 1, 'Female'),
(8, 'Helen', 'Finance', 70000, 9, 'Female'),
(9, 'Ian', 'HR', 65000, 8, 'Male'),
(10, 'Julia', 'IT', 48000, 3, 'Female');


# Categorize salary level
select name, salary,
case
when salary > 70000 then 'high'
when salary between 40000 and 70000 then 'medium'
else 'low'
end as salary_level
from company;

#Bonus based on experience
select name, experience,
case
when experience>=8 then 10000
when experience >=5 then 7000
else 3000
end as bonus
from company;

#Gender title
SELECT name,
  CASE gender
    WHEN 'Male' THEN CONCAT('Mr. ',name)
    WHEN 'Female' THEN CONCAT('Ms. ',name)
  END AS full_name_with_title
FROM company;

#Experience and salary case
SELECT name, experience, salary,
    CASE
        WHEN experience > 8 AND salary > 60000 THEN 'A'
        WHEN experience > 5 AND experience < 8 THEN 'B'
        ELSE 'C'
    END AS grade
FROM company;

# change department IT - D01,Finance- D02,HR- D03

select department,
	CASE 
        WHEN department = 'IT' THEN 'D01'
        WHEN department = 'Finance' THEN 'D02'
        WHEN department = 'HR' THEN 'D03'
    END as new_department
    from company;
    
#if salary <40000 increment 20% 40000 to 60000 then 10% else 5%
select name,salary,
	case
		when salary < 40000 then salary * 1.20       #20%
        when salary between 40000 and 60000 then salary * 1.10  #10%
        else salary * 1.05     #5%                       
    end as increment
    from company;

#department IT and finance print technical else non technical    
select department,
	CASE 
        WHEN department in('IT','Finance') THEN 'Technical'
		else 'Non-Technical'
    END as new_department
    from company;

#Average salary ,above average,below average    
select name,salary,
case
when salary>(select avg(salary) from company) then 'above average' 
else'below average'
 end as salary_level
from company;

use sales;



