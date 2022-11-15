--Create tables in which columns act as uniques-- 
DROP TABLE if exists departments; 

CREATE TABLE departments( 
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(30)
); 

--check data import by viewing table--  
select * FROM departments;

--Create table-- 
DROP TABLE if exists titles;

CREATE TABLE titles( 
	title_id VARCHAR(10) PRIMARY KEY, 
	title VARCHAR(20)
);

--View table-- 
SELECT * from titles; 

--Crete table-- 
DROP TABLE if exists employees; 

CREATE TABLE employees( 
	emp_no int PRIMARY KEY, 
	emp_title_id VARCHAR(10),
	birth_date date, 
	first_name VARCHAR(20), 
	last_name VARCHAR(20), 
	sex VARCHAR, 
	hire_date date
	);

--View table-- 
select * FROM employees; 

--Create tables with foreign and composite keys-- 
DROP table if exists salaries;

CREATE table salaries(
	emp_no int references employees(emp_no), 
	salary int,
	primary key(emp_no, salary)
);
--View table-- 
select * from salaries; 

DROP TABLE if exists dept_emp; 

CREATE table dept_emp(
	emp_no int REFERENCES employees(emp_no), 
	dept_no varchar(10) references departments(dept_no), 
	primary key(emp_no, dept_no)
); 
--View table-- 
SELECT * from dept_emp; 

DROP TABLE if exists dept_manager; 

CREATE table dept_manager(
	id serial primary key, 
	dept_no VARCHAR(5) references departments(dept_no),
	emp_no int references employees(emp_no)
); 
--View table-- 
select * from dept_manager; 