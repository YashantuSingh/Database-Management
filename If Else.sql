select * from employees;
use sales;

CREATE TABLE employees (
    employees_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    experience INT
);
INSERT INTO employees (employees_id, name, department, salary, experience) VALUES
(1, 'Alice', 'HR', 50000, 5),
(2, 'Bob', 'Engineering', 70000, 8),
(3, 'Charlie', 'Engineering', 60000, 3),
(4, 'David', 'HR', 45000, 1),
(5, 'Eve', 'Marketing', 55000, 4);


#Determine experience level
/* write a query to display each employee's exp level based on their years of exp. if exp is 5 or more
classify it as senior; otherwise, classify it as junior.*/

select employees_id, name, experience,
	if(experience >=5, 'senior', 'junior') as experience_level
from employees;

#calculate bonus based on department
/*write a query to give a 10% bonus to employee in the engineering department and a 5% bonus to other.
display the bonus amount for each employee.*/

SELECT employees_id,name, department,salary,
if (department ='Engineering', salary * 0.10, salary * 0.05) as bonus
from employees;
 
#Determine eligibility for promotion
/*write a query to determine if an employee is eligible for promotion. consider eligibility if they have
5 or more years of experience and a salary of at least 50000.*/

select employees_id,name, department,salary,experience,
if(experience >=5 and salary >= 50000, 'eligible', 'not eligible') as promotion
from employees;

#Check high salary eligibility
/*write a query to determine if an employee's salary is above the average salary. Display "above average"
if their salary is above the average, otherwise "below average".*/

select employees_id, name, salary,
if(salary>(select avg(salary) from employees), 'above average','below average') as salary_level
from employees;
