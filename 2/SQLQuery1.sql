CREATE DATABASE Companies
USE Companies
CREATE SCHEMA schema7

CREATE TABLE schema7.regions(
region_id INT PRIMARY KEY,
region_name VARCHAR(25)
)

CREATE TABLE schema7.countries(
country_id CHAR(2) PRIMARY KEY,
country_name VARCHAR(40),
region_id INT
)

CREATE TABLE schema7.locations(
location_id INT PRIMARY KEY,
street_address VARCHAR(25),
postal_code VARCHAR(12),
city VARCHAR(30),
staty_province VARCHAR(12),
country_id CHAR(2)
)

CREATE TABLE schema7.department(
department_id INT PRIMARY KEY,
department_name VARCHAR(30),
manager_id INT,
location_id INT
)

CREATE TABLE schema7.job_history(
employee_id INT PRIMARY KEY,
starts_date DATE,
end_date DATE,
job_id VARCHAR(10),
department_id INT

)

CREATE TABLE schema7.employees(
employee_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
email VARCHAR(20),
phone_number VARCHAR(20),
hire_date DATE,
job_id  VARCHAR(10),
salary INT,
commission_pct INT,
manager_id INT,
department INT
)

CREATE TABLE schema7.jobs(
job_id VARCHAR(10) PRIMARY KEY,
job_title VARCHAR(20),
min_salary INT,
max_salary INT
)

CREATE TABLE schema7.job_grades(
grade_level VARCHAR(2) PRIMARY KEY,
lowest_sal INT,
higest_sal INT
)