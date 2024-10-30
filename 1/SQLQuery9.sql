-- 1- Create a new database named "CompanyDB."
-- 2- Create a schema named "Sales" within the "CompanyDB" database.

CREATE DATABASE CompanyDB
USE CompanyDB
CREATE SCHEMA Sales

-- 3- Create a table named "employees" with columns: employee_id (INT), first_name (VARCHAR), 
-- last_name (VARCHAR), and salary (DECIMAL) within the "Sales" schema.

CREATE TABLE Sales.employees(
  employee_id INT,
  first_name VARCHAR,
  last_name VARCHAR,
  salary DECIMAL,
)
-- 4- Alter the "employees" table to add a new column named "hire_date" with the data type DATE.
ALTER TABLE Sales.employees
ADD hire_date DATE

-- 5- Select all columns from the "employees" table.

SELECT *
FROM Sales.employees

-- 6- Retrieve only the "first_name" and "last_name" columns from the "employees" table.

SELECT first_name,last_name
FROM Sales.employees

-- 7- Retrieve “full name” as a one column from "first_name" and "last_name" columns from the "employees" table.

 SELECT first_name + ' ' + last_name AS 'full name'
 FROM Sales.employees

 -- 8- Show the average salary of all employees.
 SELECT AVG(salary) AS 'average salary'
  FROM Sales.employees
-- 9- Select employees whose salary is greater than 50000.
SELECT salary
FROM Sales.employees
WHERE salary > 50000

-- 10- Retrieve employees hired in the year 2020.
SELECT*
FROM Sales.employees
WHERE YEAR(hired_date) = 2020

-- 11- List employees whose last names start with 'S.'
SELECT*
FROM Sales.employees
WHERE last_name LIKE 'S%'

-- 12- Display the top 10 highest-paid employees.
SELECT*
FROM Sales.employees
ORDER BY salary DESC
OFFSET 10 ROWS 
FETCH NEXT 10 ROWS ONLY

-- 13- Find employees with salaries between 40000 and 60000.
SELECT*
FROM Sales.employees
WHERE salary BETWEEN 40000 AND 60000

-- 14- Show employees with names containing the substring 'man.'
SELECT*
FROM Sales.employees
WHERE first_name LIKE '%man%' OR last_name LIKE '%man%'

-- 15- Display employees with a NULL value in the "hire_date" column.
SELECT*
FROM Sales.employees
WHERE hired_date IS NULL

-- 16- Select employees with a salary in the set (40000, 45000, 50000).
SELECT*
FROM Sales.employees
WHERE salary IN (40000, 45000, 50000)

-- 17- Retrieve employees hired between '2020-01-01' and '2021-01-01.'
SELECT*
FROM Sales.employees
WHERE hired_date BETWEEN '2020-01-01' and '2021-01-01'

-- 18- List employees with salaries in descending order.
SELECT*
FROM Sales.employees
ORDER BY salary DESC

-- 19- Show the first 5 employees ordered by "last_name" in ascending order.
SELECT*
FROM Sales.employees
ORDER BY last_name ASC
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY

-- 20- Display employees with a salary greater than 55000 and hired in 2020.
SELECT*
FROM Sales.employees
WHERE salary > 55000 AND YEAR(hired_date) = 2020

-- 21- Select employees whose first name is 'John' or 'Jane.'
SELECT*
FROM Sales.employees
WHERE first_name LIKE 'John' OR first_name LIKE 'Jane'

-- 22- List employees with a salary less than or equal to 55000 and a hire date after '2022-01-01.'
SELECT*
FROM Sales.employees
WHERE salary <= 55000 AND hired_date > '2022-01-01'

-- 23- Retrieve employees with a salary greater than the average salary.
SELECT*
FROM Sales.employees
WHERE salary > (SELECT AVG(salary) FROM Sales.employees)

-- 24- Display the 3rd to 7th highest-paid employees.
SELECT*
FROM Sales.employees
ORDER BY salary DESC
OFFSET 2 ROWS
FETCH NEXT 5 ROWS ONLY

-- 25- List employees hired after '2021-01-01' in alphabetical order.
SELECT*
FROM Sales.employees
WHERE hired_date > '2021-01-01'
ORDER BY first_name  ASC, last_name ASC

-- 26- Retrieve employees with a salary greater than 50000 and last name not starting with 'A.'
SELECT*
FROM Sales.employees
WHERE salary > 50000 AND last_name NOT LIKE 'A%'

-- 27- Display employees with a salary that is not NULL.
SELECT*
FROM Sales.employees
WHERE salary IS NOT NULL

-- 28- Show employees with names containing 'e' or 'i' and a salary greater than 45000.
SELECT*
FROM Sales.employees
WHERE salary >45000 AND (first_name LIKE '%e%' OR  first_name LIKE '%i%' 
OR last_name LIKE '%e%' OR last_name LIKE '%i%')


 

