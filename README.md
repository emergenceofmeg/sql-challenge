# sql-challenge

    This challenge is split into three parts: Data Modeling, Data Engineering, and Data Analysis. As requested, you will find an EmployeesSQL folder which contains ERD model for the data, a file for table schemata called, 'emp_tables.sql', and a file for queries, 'emp_queries.sql.' 

    The bonus was not attempted. 

    Detailed feedback is greatly appreciated! 

#### Data Modeling
For Data Modeling I used the suggested ERD tool at http://www.quickdatabasediagrams.com/. 

#### Data Engineering 
Please see the emp_tables.sql file for table schemata. In engineering the data, I allowed the following columns to function as primary keys for their respoective tables. 
    id serial -- dept_manager
    dept_no  -- departments 
    title_no  -- titles 
    emp_no --  employees 

    Foreign Keys: 
    For the salaries and dept_emp tables a foreign key or reference may be designated. 

#### Data Analysis 
    All Data Analysis requested for the employees database is listed below. In emp_queries.sql the query assignment is commented before. 

        1. List the following details of each employee: employee number, last name, first name, sex, and salary.

        2. List first name, last name, and hire date for employees who were hired in 1986.

        3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

        4. List the department of each employee with the following information: employee number, last name, first name, and department name.

        5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

        6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

        7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

        8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.