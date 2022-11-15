--employee number, last name, first name, sex, and salary--
SELECT emp_no, last_name, first_name, sex, salary
from employees
join salaries 
using(emp_no);

--first name, last name, and hire date for employees who were hired in 1986--
SELECT first_name, last_name, hire_date
from employees
WHERE hire_date between '1986-01-01' and '1986-12-31';

--manager details, department number, department name, the manager's employee number, last name, first name--
SELECT dept_no, dept_name, emp_no, last_name, first_name
from departments 
join dept_manager
using(dept_no)
join employees
using(emp_no); 

--departments for each employee including, employee number, last name, first name, and department name.--
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp on e.emp_no = dept_emp.emp_no
join departments as d on dept_emp.dept_no = d.dept_no; 

--first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."--
SELECT first_name, last_name, sex
from employees
WHERE 
	first_name = 'Hercules'
	and last_name like 'B%';
	
--employees in the Sales department--
create VIEW sales_dept as 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp on e.emp_no = dept_emp.emp_no
join departments as d on dept_emp.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'; 
--List sales_dept--	
select * from sales_dept; 

--emplployees in sales or development department--
CREATE VIEW salesndev as 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp on e.emp_no = dept_emp.emp_no
join departments as d on dept_emp.dept_no = d.dept_no
	WHERE 
	d.dept_name = 'Sales'
	or d.dept_name = 'Development'; 
	
select * from salesndev; 

--frequency count of employee last names--
SELECT last_name, count(last_name)
from employees 
group by last_name
ORDER by count(last_name) DESC; 